class AddUniqueToNombreDelSueno < ActiveRecord::Migration[7.0]
  def change
    add_index :add_dreams, :nombre_del_sueño, unique: true
  end
end
