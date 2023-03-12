class ChangeAddressTypeToString < ActiveRecord::Migration[7.0]
  def change
    change_column :users, :address, :string
    change_column :users, :username, :string
  end
end
