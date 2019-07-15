class ChangeDataBirthdayUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :birth_date, :datetime
  end
end
