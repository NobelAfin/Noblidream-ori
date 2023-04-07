class TravelController < ApplicationController
  def europe
  end

  def steps_travel
  	
  end
  
  def asia
  	
  end
  
  def america
  	
  end
  
  def africa
  	
  end
  
  def oceania
  	
  end
  
  def world
    @travels = Travel.where(travel_id: 1)
    @dream = Dream.find(params[:dream_id])
  end
  
  def create
    dream = Dream.find(params[:dream_id])
    if params[:travel_ids].present?
      travel_ids = params[:travel_ids].reject { |id| id.to_i.zero? }
      travel_ids.each do |travel_id|
        travel = Travel.find(travel_id)
        goal = Goal.create(dream_id: dream.id, travel_id: travel_id, user_id: current_user.id, title: travel.title)
        if goal.persisted?
          flash[:success] = "Meta creada correctamente"
        else
          flash[:error] = "Error al crear la meta"
        end
      end
    else
      flash[:error] = "Error al crear la meta"
    end
  end
  
  private
  
  def travel_params
    params.require(:travel).permit(:travel_id)
  end
end