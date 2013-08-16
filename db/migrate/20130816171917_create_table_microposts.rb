class CreateTableMicroposts < ActiveRecord::Migration
  def change
    create_table :microposts do |t|
      t.string :content
      t.integer :user_id
      t.boolean :visible
      t.datetime :eff_dt
	  t.integer :category_id
	  t.string :category
	  t.float :latitude
	  t.float :longitude
	  t.float :ip_address
	  t.string :zipcode

      t.timestamps
    end
	add_index :microposts, [:user_id, :created_at]
  end
end
