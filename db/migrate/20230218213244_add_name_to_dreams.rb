class AddNameToDreams < ActiveRecord::Migration[7.0]
  def change
    add_column :dreams, :name, :string
  end
end
