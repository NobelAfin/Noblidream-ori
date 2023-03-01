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

ActiveRecord::Schema[7.0].define(version: 2023_02_28_071610) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "architectural_styles", force: :cascade do |t|
    t.string "Description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "brand_and_models", force: :cascade do |t|
    t.string "dream_id"
    t.string "title"
    t.string "brand"
    t.string "model"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "business_categories", force: :cascade do |t|
    t.string "dream_id"
    t.string "title"
    t.string "category"
    t.string "business"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "business_extras", force: :cascade do |t|
    t.string "dream_id"
    t.string "title"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "car_extras", force: :cascade do |t|
    t.string "dream_id"
    t.string "title"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "car_years", force: :cascade do |t|
    t.string "dream_id"
    t.string "year"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "consoles", force: :cascade do |t|
    t.string "dream_id"
    t.string "brand"
    t.string "model"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "dreams", force: :cascade do |t|
    t.string "category"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "name"
  end

  create_table "entrepreneur_infos", force: :cascade do |t|
    t.string "dream_id"
    t.string "tienes_alguna_experiencia_emprendiendo"
    t.string "de_que_sector_fue_su_emprendimiento"
    t.string "fue_exitoso_o_no"
    t.string "por_que_crees_que_tuvo_ese_resultado"
    t.string "que_aprendiste_de_ese_emprendimiento_que_podrias_aplicar_a_este"
    t.string "como_visualizas_el_proyecto_actual_en_5_años"
    t.string "pregunta_engañosa_por_que_quieres_emprender"
    t.string "sin_contar_novelas_y_libros_escolares_cuantos_libros_leiste_en_"
    t.string "a_que_te_dedicas_actualmente"
    t.string "escribe_tus_conocimientos_tecnicos_profesionales_y_habilidades"
    t.string "cual_es_tu_motivacion_para_emprender"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "gamer_extras", force: :cascade do |t|
    t.string "dream_id"
    t.string "title"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "goals", force: :cascade do |t|
    t.string "title"
    t.bigint "dream_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["dream_id"], name: "index_goals_on_dream_id"
  end

  create_table "house_extras", force: :cascade do |t|
    t.string "dream_id"
    t.string "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "pc_gamers", force: :cascade do |t|
    t.string "dream_id"
    t.string "brand"
    t.string "model"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "rooms", force: :cascade do |t|
    t.string "dream_id"
    t.string "name"
    t.integer "rooms_number"
    t.string "size"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "large_size"
  end

  create_table "travel_gamers", force: :cascade do |t|
    t.string "dream_id"
    t.string "event"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "travels", force: :cascade do |t|
    t.string "title"
    t.bigint "dream_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "continent"
    t.string "country"
    t.string "city"
    t.index ["dream_id"], name: "index_travels_on_dream_id"
  end

  add_foreign_key "goals", "dreams"
  add_foreign_key "travels", "dreams"
end
