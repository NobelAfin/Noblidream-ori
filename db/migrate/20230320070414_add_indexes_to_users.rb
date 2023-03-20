class AddIndexesToUsers < ActiveRecord::Migration[7.0]
  def change
    add_index :users, :phone, unique: true
    add_index :users, :username, unique: true
  end
end
