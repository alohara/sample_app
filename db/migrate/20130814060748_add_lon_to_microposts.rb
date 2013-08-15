class AddLonToMicroposts < ActiveRecord::Migration
  def change
    add_column :microposts, :longitude, :float
  end
end
