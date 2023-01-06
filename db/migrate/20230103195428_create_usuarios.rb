class CreateUsuarios < ActiveRecord::Migration[7.0]
  def change
    create_table :usuarios do |t|
      t.string :nombre, limit: 30
      t.string :apellido_paterno, limit: 20
      t.string :apellido_materno, limit: 20
      t.string :fecha_de_nacimiento, limit: 16
      t.binary :telefono, limit: 16
      t.string :estado_civil, limit: 20
      t.string :sexo, limit: 15
      t.string :escolaridad, limit: 20
      t.string :estado, limit: 20
      t.string :municipio, limit: 20
      t.binary :domicilio, limit: 20
      t.binary :numero_exterior, limit: 8
      t.binary :numero_interior, limit: 8
      t.binary :codigo_postal, limit: 8
      t.binary :correo, limit: 50
      t.binary :confirmar_correo, limit: 50
      t.binary :contraseña, limit: 20
      t.binary :confirmar_contraseña, limit: 20

      t.timestamps
    end
  end
end
