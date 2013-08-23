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

require 'spec_helper'

describe Interest do
  pending "add some examples to (or delete) #{__FILE__}"
end
