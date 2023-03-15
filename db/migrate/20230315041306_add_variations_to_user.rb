class AddVariationsToUser < ActiveRecord::Migration[7.0]
  def change
    add_column :users, :civil_status, :string, limit: 40, default: "Selecciona un estado civil"
    add_column :users, :sex, :string, limit: 30, default: "Seleccione una opción"
    add_column :users, :schooling, :string, limit: 30, default: "Selecciona una escolaridad"
    add_column :users, :country, :string, limit: 30, default: "Selecciona un pais"
    add_column :users, :state, :string, limit: 30
    add_column :users, :municipality, :string, limit: 30
  end
end
