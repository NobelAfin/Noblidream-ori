class CreateBusinessCategory < ActiveRecord::Migration[7.0]
  def change
    create_table :business_categories do |t|
      t.string :dream_id
      t.string :title
      t.string :category
      t.string :business

      t.timestamps
    end
  end
end
