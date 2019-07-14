class ChangeDataQuantityCarts < ActiveRecord::Migration[5.2]
  def change
  	change_column :carts, :quantity, :integer, default: 1
  end
end
