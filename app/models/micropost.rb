# == Schema Information
#
# Table name: microposts
#
#  id          :integer         not null, primary key
#  content     :string(255)
#  user_id     :integer
#  visible     :boolean
#  eff_dt      :datetime
#  category_id :integer
#  category    :string(255)
#  created_at  :datetime        not null
#  updated_at  :datetime        not null
#  latitude    :float
#  longitude   :float
#  ip_address  :float
#  zipcode     :string(255)
#

class Micropost < ActiveRecord::Base
  attr_accessible :content, :visible, :eff_dt, :category, :latitude, :longitude, :zipcode, :ip_address
  belongs_to :user
 
  geocoded_by :ip_address
  reverse_geocoded_by :latitude, :longitude do |obj,results|
    if geo = results.first
      obj.zipcode = geo.postal_code
    end
  end
  after_validation :geocode, :reverse_geocode
  
  validates :content, presence: true, length: { maximum: 140 }
  validates :user_id, presence: true
  
  default_scope order: 'microposts.created_at DESC'
  
  # Returns microposts from the users being followed by the given user.
  def self.from_users_followed_by(user)
    followed_user_ids = "SELECT followed_id FROM relationships
	                     WHERE follower_id= :user_id"
	where("(user_id IN (#{followed_user_ids}) OR user_id = :user_id) AND visible = :boolean", user_id: user.id, boolean: true)
  end
end
