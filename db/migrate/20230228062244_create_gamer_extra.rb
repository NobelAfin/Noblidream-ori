class CreateGamerExtra < ActiveRecord::Migration[7.0]
  def change
    create_table :gamer_extras do |t|
      t.string :dream_id
      t.string :title

      t.timestamps
    end
  end
end
