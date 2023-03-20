class AddDreamsRename < ActiveRecord::Migration[7.0]
  def change
    rename_column :add_dreams, :nombre_del_sueño_que_deseas_registrar, :nombre_del_sueño
    rename_column :add_dreams, :cuenta_la_historia_de_por_que_deseas_que_este_sueño_se_haga_realidad, :historia_del_sueño
    rename_column :add_dreams, :a_que_sector_industria_o_area_de_la_vida_pertenece_tu_sueño, :sector_del_sueño
    rename_column :add_dreams, :descripcion_de_el_sueño, :descripcion
    rename_column :add_dreams, :como_esperarias_hacerlo_realidad_si_tuvieras_dinero_infinito_vida_infinita_imaginacion_infinita,:plan_ideal
    rename_column :add_dreams,:como_se_resuelve_actualmente_el_sueño_completo_o_partes_del_sueño,:solucion_actual
    rename_column :add_dreams,:explica_tu_motivacion_para_llevar_a_cabo_este_sueño,:motivacion
    rename_column :add_dreams,:cuanto_tiempo_dinero_y_esfuerzo_estas_dispuesto_a_meterle_a_tu_sueño,:recursos
  end
end
