class CreateOrders < ActiveRecord::Migration[5.2]
  def change
    create_table :orders do |t|
      t.integer :payment_method, default: 0
      t.string :to_address, null: false
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
