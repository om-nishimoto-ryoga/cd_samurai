class AddDetailsToUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :last_name, :string, default: "", null: false
    add_column :users, :first_name, :string, default: "", null: false
    add_column :users, :last_name_kana, :string, default: "", null: false
    add_column :users, :first_name_kana, :string, default: "", null: false
    add_column :users, :gender, :integer
    add_column :users, :birthday, :integer
    add_column :users, :login_allowed, :boolean ,default: true
  end
end
