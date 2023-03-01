class AddLargeSizeToRooms < ActiveRecord::Migration[7.0]
  def change
    add_column :rooms, :large_size, :string
  end
end
