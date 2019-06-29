class CreateAddresses < ActiveRecord::Migration[5.2]
  def change
    create_table :addresses do |t|
      t.references :user, foreign_key: true
      t.string :tel_number, null: false
      t.string :postal_code, null: false
      t.string :address, null: false
      t.string :to_name, null: false
      t.string :to_name_kana, null: false

      t.timestamps
    end
  end
end
