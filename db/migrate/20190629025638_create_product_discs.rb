class CreateProductDiscs < ActiveRecord::Migration[5.2]
  def change
    create_table :product_discs do |t|
      t.string :disc_title, null: false
      t.references :product, foreign_key: true

      t.timestamps
    end
  end
end
