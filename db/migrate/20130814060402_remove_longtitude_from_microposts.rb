class RemoveLongtitudeFromMicroposts < ActiveRecord::Migration
  def change
    remove_column :microposts, :longtitude, :float
  end
end
