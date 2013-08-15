class AddZipipToMicroposts < ActiveRecord::Migration
  def change
    add_column :microposts, :ip_address, :float
    add_column :microposts, :zipcode, :string
  end
end
