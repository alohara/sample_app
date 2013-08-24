class FixColumnMicropost < ActiveRecord::Migration
  def change
    change_column :microposts, :ip_address, :string
	rename_column :microposts, :ip_address, :content_ip
  end
end
