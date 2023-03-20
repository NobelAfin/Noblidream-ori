class AddNameToUser < ActiveRecord::Migration[7.0]
  def change
    add_column :users, :name, :string, limit: 30, null: false
    add_column :users, :surname, :string, limit: 20, null: false
    add_column :users, :mother_surname, :string, limit: 20
    add_column :users, :birthdate, :date, null: false
    add_column :users, :phone, :string, limit: 16, null: false, unique: true
    add_column :users, :address, :binary, limit: 20, null: false
    add_column :users, :exterior_number, :string, limit: 8, null: false
    add_column :users, :interior_number, :string, limit: 8
    add_column :users, :zip_code, :string, limit: 8
    add_column :users, :last_login, :timestamp
    add_column :users, :num_of_hab, :integer, limit: 4
    add_column :users, :username, :binary, limit: 20, null: false, unique: true
  end
end
