class CreateProductDiscSongs < ActiveRecord::Migration[5.2]
  def change
    create_table :product_disc_songs do |t|
      t.string :song_name, null: false
      t.integer :position
      t.references :product_disc, foreign_key: true

      t.timestamps
    end
  end
end
