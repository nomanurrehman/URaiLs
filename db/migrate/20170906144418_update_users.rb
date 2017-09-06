class UpdateUsers < ActiveRecord::Migration[5.1]
  def change
    add_column(:users, :first_name, :string, limit: 50, null: false, default: '')
    add_column(:users, :last_name, :string, limit: 50, null: false, default: '')
    add_column(:users, :date_of_birth, :date, null: false, default: '1970-01-01')
  end
end
