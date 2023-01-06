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

ActiveRecord::Schema[7.0].define(version: 2023_01_04_040238) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "nobel_usuarios", force: :cascade do |t|
    t.string "nombre", limit: 30
    t.string "apellido_paterno", limit: 20
    t.string "apellido_materno", limit: 20
    t.string "fecha_de_nacimiento", limit: 16
    t.string "telefono", limit: 16
    t.string "estado_civil", limit: 20
    t.string "sexo", limit: 15
    t.string "escolaridad", limit: 20
    t.string "estado", limit: 20
    t.string "municipio", limit: 20
    t.string "domicilio", limit: 20
    t.string "numero_exterior", limit: 8
    t.string "numero_interior", limit: 8
    t.string "codigo_postal", limit: 8
    t.string "correo", limit: 50
    t.string "confirmar_correo", limit: 50
    t.string "contraseña", limit: 20
    t.string "confirmar_contraseña", limit: 20
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "usuarios", force: :cascade do |t|
    t.string "nombre", limit: 30
    t.string "apellido_paterno", limit: 20
    t.string "apellido_materno", limit: 20
    t.binary "fecha_de_nacimiento"
    t.binary "telefono"
    t.string "estado_civil", limit: 20
    t.string "sexo", limit: 15
    t.string "escolaridad", limit: 20
    t.string "estado", limit: 20
    t.string "municipio", limit: 20
    t.binary "domicilio"
    t.binary "numero_exterior"
    t.binary "numero_interior"
    t.binary "codigo_postal"
    t.binary "correo"
    t.binary "confirmar_correo"
    t.binary "contraseña"
    t.binary "confirmar_contraseña"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
