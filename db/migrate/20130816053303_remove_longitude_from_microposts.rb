class RemoveLongitudeFromMicroposts < ActiveRecord::Migration
  def change
    remove_column :microposts, :longtitude
  end
end
