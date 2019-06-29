class CreateOrderProducts < ActiveRecord::Migration[5.2]
  def change
    create_table :order_products do |t|
      t.string :artist_name, null: false
      t.string :cd_title, null: false
      t.string :label_name, null: false
      t.string :product_image_id, null: false
      t.integer :price, null: false
      t.integer :ship_status, default: 0
      t.references :genre, foreign_key: true
      t.references :order, foreign_key: true

      t.timestamps
    end
  end
end
