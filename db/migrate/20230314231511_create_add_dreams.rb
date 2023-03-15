class CreateAddDreams < ActiveRecord::Migration[7.0]
  def change
    create_table :add_dreams, id: false do |t|
      t.primary_key :addream_id
      t.integer :user_id
      t.string :nombre_del_sueño_que_deseas_registrar, null: false, unique: true
      t.string :cuenta_la_historia_de_por_que_deseas_que_este_sueño_se_haga_realidad
      t.string :a_que_sector_industria_o_area_de_la_vida_pertenece_tu_sueño, null: false
      t.string :descripcion_de_el_sueño, null: false
      t.string :como_esperarias_hacerlo_realidad_si_tuvieras_dinero_infinito_vida_infinita_imaginacion_infinita, null: false
      t.string :como_se_resuelve_actualmente_el_sueño_completo_o_partes_del_sueño
      t.string :explica_tu_motivacion_para_llevar_a_cabo_este_sueño
      t.string :cuanto_tiempo_dinero_y_esfuerzo_estas_dispuesto_a_meterle_a_tu_sueño

      t.timestamps
    end

    add_foreign_key :add_dreams, :users, column: :user_id, primary_key: "user_id"

  end
end
