class AddLatlonToMicroposts < ActiveRecord::Migration
  def change
    add_column :microposts, :latitude, :float
    add_column :microposts, :longtitude, :float
  end
end
