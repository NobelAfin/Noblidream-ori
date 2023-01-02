class CreateUsuarios < ActiveRecord::Migration[7.0]
  def change
    create_table :usuarios do |t|
      t.string :nombre
      t.string :apellido_paterno
      t.string :apellido_materno
      t.string :fecha_de_nacimiento
      t.string :telefono
      t.string :estado_civil
      t.string :sexo
      t.string :escolaridad
      t.string :estado
      t.string :municipio
      t.string :domicilio
      t.string :numero_exterior
      t.string :numero_interior
      t.string :codigo_postal
      t.string :correo
      t.string :confirmar_correo
      t.string :contraseña
      t.string :confirmar_contraseña

      t.timestamps
    end
  end
end
