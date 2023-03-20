class PagesController < ApplicationController
  def index
  end

  def dreams
  end

  def add_dream
  end

  def add_new
    @add_dream = AddDream.new
  end

  def show
    @add_dream = AddDream.find(params[:addream_id])
  end

  def create
    @add_dream = AddDream.new(add_dream_params)

    if @add_dream.save
      # Handle successful save here
      redirect_to @add_dream
    else
      # Handle unsuccessful save here
      render :new
    end
  end

  private

  def add_dream_params
    params.require(:add_dream).permit(:nombre_del_sueño_que_deseas_registrar, :cuenta_la_historia_de_por_que_deseas_que_este_sueño_se_haga_realidad, :a_que_sector_industria_o_area_de_la_vida_pertenece_tu_sueño, :descripcion_de_el_sueño, :como_esperarias_hacerlo_realidad_si_tuvieras_dinero_infinito_vida_infinita_imaginacion_infinita, :como_se_resuelve_actualmente_el_sueño_completo_o_partes_del_sueño, :explica_tu_motivacion_para_llevar_a_cabo_este_sueño, :cuanto_tiempo_dinero_y_esfuerzo_estas_dispuesto_a_meterle_a_tu_sueño)
  end 

end 