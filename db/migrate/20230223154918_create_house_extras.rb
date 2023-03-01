class CreateHouseExtras < ActiveRecord::Migration[7.0]
  def change
    create_table :house_extras do |t|
      t.string :dream_id
      t.string :description

      t.timestamps
    end
  end
end
