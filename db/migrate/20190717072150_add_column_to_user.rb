class AddColumnToUser < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :deleted_at, :datatime
    add_index :users, :deleted_at
  end
end
