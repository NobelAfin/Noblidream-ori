class CreateBrandAndModel < ActiveRecord::Migration[7.0]
  def change
    create_table :brand_and_models do |t|
      t.string :dream_id
      t.string :title
      t.string :brand
      t.string :model

      t.timestamps
    end
  end
end
