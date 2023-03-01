class AddContinentToTravels < ActiveRecord::Migration[7.0]
  def change
    add_column :travels, :continent, :string
    add_column :travels, :country, :string
    add_column :travels, :city, :string
  end
end
