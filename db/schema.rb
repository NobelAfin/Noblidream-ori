# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema[7.0].define(version: 2023_01_02_221311) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "usuarios", force: :cascade do |t|
    t.string "nombre"
    t.string "apellido_paterno"
    t.string "apellido_materno"
    t.string "fecha_de_nacimiento"
    t.string "telefono"
    t.string "estado_civil"
    t.string "sexo"
    t.string "escolaridad"
    t.string "estado"
    t.string "municipio"
    t.string "domicilio"
    t.string "numero_exterior"
    t.string "numero_interior"
    t.string "codigo_postal"
    t.string "correo"
    t.string "confirmar_correo"
    t.string "contraseña"
    t.string "confirmar_contraseña"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
