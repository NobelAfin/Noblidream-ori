class CreateRooms < ActiveRecord::Migration[7.0]
  def change
    create_table :rooms do |t|
      t.string :dream_id
      t.string :name
      t.integer :rooms_number
      t.string :size

      t.timestamps
    end
  end
end
