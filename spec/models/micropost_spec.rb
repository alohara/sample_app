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

require 'spec_helper'

describe Micropost do
  pending "add some examples to (or delete) #{__FILE__}"
end
