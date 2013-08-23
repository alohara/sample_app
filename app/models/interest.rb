# == Schema Information
#
# Table name: interests
#
#  id         :integer         not null, primary key
#  category   :string(255)
#  cat_descr  :string(255)
#  active     :boolean         default(TRUE)
#  created_at :datetime        not null
#  updated_at :datetime        not null
#

class Interest < ActiveRecord::Base
  attr_accessible :id, :active, :cat_descr, :category
  has_many :microposts
end
