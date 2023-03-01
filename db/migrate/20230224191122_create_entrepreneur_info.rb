class CreateEntrepreneurInfo < ActiveRecord::Migration[7.0]
  def change
    create_table :entrepreneur_infos do |t|
      t.string :dream_id
      t.string :tienes_alguna_experiencia_emprendiendo
      t.string :de_que_sector_fue_su_emprendimiento
      t.string :fue_exitoso_o_no
      t.string :por_que_crees_que_tuvo_ese_resultado
      t.string :que_aprendiste_de_ese_emprendimiento_que_podrias_aplicar_a_este_nuevo
      t.string :como_visualizas_el_proyecto_actual_en_5_años
      t.string :pregunta_engañosa_por_que_quieres_emprender
      t.string :sin_contar_novelas_y_libros_escolares_cuantos_libros_leiste_en_el_año_pasado
      t.string :a_que_te_dedicas_actualmente
      t.string :escribe_tus_conocimientos_tecnicos_profesionales_y_habilidades
      t.string :cual_es_tu_motivacion_para_emprender

      t.timestamps
    end
  end
end
