class CreateTravelGamer < ActiveRecord::Migration[7.0]
  def change
    create_table :travel_gamers do |t|
      t.string :dream_id
      t.string :event

      t.timestamps
    end
  end
end
