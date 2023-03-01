class CreateBusinessExtra < ActiveRecord::Migration[7.0]
  def change
    create_table :business_extras do |t|
      t.string :dream_id
      t.string :title

      t.timestamps
    end
  end
end
