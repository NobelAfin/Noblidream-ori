class CreateGoals < ActiveRecord::Migration[7.0]
  def change
    create_table :goals do |t|
      t.string :title
      t.references :dream, index: true, foreign_key: true
      t.references :travel, index: true, foreign_key: true

      t.timestamps
    end
  end
end
