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

ActiveRecord::Schema[7.0].define(version: 2023_03_24_035554) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "activities", id: :serial, force: :cascade do |t|
    t.string "trackable_type"
    t.integer "trackable_id"
    t.string "owner_type"
    t.integer "owner_id"
    t.string "key"
    t.text "parameters"
    t.string "recipient_type"
    t.integer "recipient_id"
    t.datetime "created_at", precision: nil, null: false
    t.datetime "updated_at", precision: nil, null: false
    t.index ["owner_id", "owner_type"], name: "index_activities_on_owner_id_and_owner_type"
    t.index ["owner_type", "owner_id"], name: "index_activities_on_owner_type_and_owner_id"
    t.index ["recipient_id", "recipient_type"], name: "index_activities_on_recipient_id_and_recipient_type"
    t.index ["recipient_type", "recipient_id"], name: "index_activities_on_recipient_type_and_recipient_id"
    t.index ["trackable_id", "trackable_type"], name: "index_activities_on_trackable_id_and_trackable_type"
    t.index ["trackable_type", "trackable_id"], name: "index_activities_on_trackable_type_and_trackable_id"
  end

  create_table "add_dreams", primary_key: "addream_id", force: :cascade do |t|
    t.integer "user_id"
    t.string "nombre_del_sueño", null: false
    t.string "historia_del_sueño"
    t.string "sector_del_sueño", null: false
    t.string "descripcion", null: false
    t.string "plan_ideal", null: false
    t.string "solucion_actual"
    t.string "motivacion"
    t.string "recursos"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["nombre_del_sueño"], name: "index_add_dreams_on_nombre_del_sueño", unique: true
  end

  create_table "architectural_styles", primary_key: "archstyle_id", id: :bigint, default: -> { "nextval('architectural_styles_id_seq'::regclass)" }, force: :cascade do |t|
    t.string "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "brand_and_models", primary_key: "brandmodels_id", id: :bigint, default: -> { "nextval('brand_and_models_id_seq'::regclass)" }, force: :cascade do |t|
    t.string "dream_id"
    t.string "title"
    t.string "brand"
    t.string "model"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "business_categories", primary_key: "business_id", id: :bigint, default: -> { "nextval('business_categories_id_seq'::regclass)" }, force: :cascade do |t|
    t.string "dream_id"
    t.string "title"
    t.string "category"
    t.string "business"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "business_extras", primary_key: "businessextra_id", id: :bigint, default: -> { "nextval('business_extras_id_seq'::regclass)" }, force: :cascade do |t|
    t.string "dream_id"
    t.string "title"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "car_extras", primary_key: "carextra_id", id: :bigint, default: -> { "nextval('car_extras_id_seq'::regclass)" }, force: :cascade do |t|
    t.string "dream_id"
    t.string "title"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "car_years", primary_key: "caryear_id", id: :bigint, default: -> { "nextval('car_years_id_seq'::regclass)" }, force: :cascade do |t|
    t.string "dream_id"
    t.string "year"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "consoles", primary_key: "console_id", id: :bigint, default: -> { "nextval('consoles_id_seq'::regclass)" }, force: :cascade do |t|
    t.string "dream_id"
    t.string "brand"
    t.string "model"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "dreams", primary_key: "dream_id", id: :bigint, default: -> { "nextval('dreams_id_seq'::regclass)" }, force: :cascade do |t|
    t.string "category"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "name"
  end

  create_table "entrepreneur_infos", primary_key: "entrepreneurinfo_id", id: :bigint, default: -> { "nextval('entrepreneur_infos_id_seq'::regclass)" }, force: :cascade do |t|
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

  create_table "gamer_extras", primary_key: "gamesextra_id", id: :bigint, default: -> { "nextval('gamer_extras_id_seq'::regclass)" }, force: :cascade do |t|
    t.string "dream_id"
    t.string "title"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "goals", primary_key: "goal_id", id: :bigint, default: -> { "nextval('goals_id_seq'::regclass)" }, force: :cascade do |t|
    t.string "title"
    t.bigint "dream_id"
    t.bigint "travel_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "user_id", null: false
    t.index ["dream_id"], name: "index_goals_on_dream_id"
    t.index ["travel_id"], name: "index_goals_on_travel_id"
    t.index ["user_id"], name: "index_goals_on_user_id"
  end

  create_table "house_extras", primary_key: "housextra_id", id: :bigint, default: -> { "nextval('house_extras_id_seq'::regclass)" }, force: :cascade do |t|
    t.string "dream_id"
    t.string "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "pc_gamers", primary_key: "pcgamer_id", id: :bigint, default: -> { "nextval('pc_gamers_id_seq'::regclass)" }, force: :cascade do |t|
    t.string "dream_id"
    t.string "brand"
    t.string "model"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "rooms", primary_key: "room_id", id: :bigint, default: -> { "nextval('rooms_id_seq'::regclass)" }, force: :cascade do |t|
    t.string "dream_id"
    t.string "name"
    t.integer "rooms_number"
    t.string "size"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "large_size"
  end

  create_table "travel_gamers", primary_key: "travelgamer_id", id: :bigint, default: -> { "nextval('travel_gamers_id_seq'::regclass)" }, force: :cascade do |t|
    t.string "dream_id"
    t.string "event"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "travels", primary_key: "travel_id", id: :bigint, default: -> { "nextval('travels_id_seq'::regclass)" }, force: :cascade do |t|
    t.string "title"
    t.bigint "dream_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "continent"
    t.string "country"
    t.string "city"
    t.index ["dream_id"], name: "index_travels_on_dream_id"
  end

  create_table "users", primary_key: "user_id", id: :bigint, default: -> { "nextval('users_id_seq'::regclass)" }, force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "name", limit: 30, null: false
    t.string "surname", limit: 20, null: false
    t.string "mother_surname", limit: 20
    t.date "birthdate", null: false
    t.string "phone", limit: 16, null: false
    t.string "address", null: false
    t.string "exterior_number", limit: 8, null: false
    t.string "interior_number", limit: 8
    t.string "zip_code", limit: 8
    t.integer "num_of_hab"
    t.string "username", null: false
    t.integer "views", default: 0
    t.integer "sign_in_count", default: 0, null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.inet "current_sign_in_ip"
    t.inet "last_sign_in_ip"
    t.string "civil_status", limit: 40, default: "Selecciona un estado civil"
    t.string "sex", limit: 30, default: "Seleccione una opción"
    t.string "schooling", limit: 30, default: "Selecciona una escolaridad"
    t.string "country", limit: 30, default: "Selecciona un pais"
    t.string "state", limit: 30
    t.string "municipality", limit: 30
    t.integer "role", default: 0
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["phone"], name: "index_users_on_phone", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
    t.index ["username"], name: "index_users_on_username", unique: true
  end

  add_foreign_key "add_dreams", "users", primary_key: "user_id"
  add_foreign_key "goals", "dreams", primary_key: "dream_id"
  add_foreign_key "goals", "travels", primary_key: "travel_id"
  add_foreign_key "goals", "users", primary_key: "user_id"
  add_foreign_key "travels", "dreams", primary_key: "dream_id"
end
