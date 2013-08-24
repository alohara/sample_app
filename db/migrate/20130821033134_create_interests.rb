class CreateInterests < ActiveRecord::Migration
  def change
    create_table :interests do |t|
      t.string :category
      t.string :cat_descr
      t.boolean :active, default: true

      t.timestamps
    end
  end
end
