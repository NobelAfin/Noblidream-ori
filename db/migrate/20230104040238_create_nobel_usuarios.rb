class CreateNobelUsuarios < ActiveRecord::Migration[7.0]
  def change
    create_table :nobel_usuarios do |t|
      t.string :nombre, limit: 30
      t.string :apellido_paterno, limit: 20
      t.string :apellido_materno, limit: 20
      t.string :fecha_de_nacimiento, limit: 16
      t.string :telefono, limit: 16
      t.string :estado_civil, limit: 20
      t.string :sexo, limit: 15
      t.string :escolaridad, limit: 20
      t.string :estado, limit: 20
      t.string :municipio, limit: 20
      t.string :domicilio, limit: 20
      t.string :numero_exterior, limit: 8
      t.string :numero_interior, limit: 8
      t.string :codigo_postal, limit: 8
      t.string :correo, limit: 50
      t.string :confirmar_correo, limit: 50
      t.string :contraseña, limit: 20
      t.string :confirmar_contraseña, limit: 20

      t.timestamps
    end
  end
end
