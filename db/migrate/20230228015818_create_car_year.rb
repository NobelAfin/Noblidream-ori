class CreateCarYear < ActiveRecord::Migration[7.0]
  def change
    create_table :car_years do |t|
      t.string :dream_id
      t.string :year

      t.timestamps
    end
  end
end
