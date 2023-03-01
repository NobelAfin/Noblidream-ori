class CreatePcGamer < ActiveRecord::Migration[7.0]
  def change
    create_table :pc_gamers do |t|
      t.string :dream_id
      t.string :brand
      t.string :model

      t.timestamps
    end
  end
end
