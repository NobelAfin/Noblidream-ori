class CreateConsole < ActiveRecord::Migration[7.0]
  def change
    create_table :consoles do |t|
      t.string :dream_id
      t.string :brand
      t.string :model

      t.timestamps
    end
  end
end
