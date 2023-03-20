class AddDreamsController < ApplicationController
    def add_dream
        @add_dream = AddDream.new
      end

      def new
        @add_dream = AddDream.new
      end
    
      def show
        @add_dream = AddDream.find(params[:id])
      end
    
      def create
        @add_dream = AddDream.new(add_dream_params)
        @add_dream.user = current_user
    
        if @add_dream.save
          # Handle successful save here
          redirect_to @add_dream
        else
          # Handle unsuccessful save here
          if @add_dream.errors.any?
            flash.now[:error] = "Dejaste uno o más campos obligatorios vacíos"
          elsif AddDream.exists?(nombre_del_sueño: @add_dream.nombre_del_sueño)
            flash.now[:error] = "El nombre del sueño que añadiste ya existe"
          else
            flash.now[:error] = "Error al enviar formulario de nuevo sueño"
          end
          render :new
        end
      end
    
      private
    
      def add_dream_params
        params.require(:add_dream).permit(:nombre_del_sueño, :historia_del_sueño, :sector_del_sueño, :descripcion, :plan_ideal, :solucion_actual, :motivacion, :recursos)
      end 
end
