class CreateProducts < ActiveRecord::Migration[5.2]
  def change
    create_table :products do |t|
      t.references :genre, foreign_key: true
      t.references :admin, foreign_key: true
      t.string :artist_name, null: false
      t.string :cd_title, null: false
      t.string :label_name, null: false
      t.string :product_image_id, null: false
      t.integer :price, null: false
      t.integer :stock, null: false
      t.boolean :buy_capable , default: true

      t.timestamps
    end
  end
end
