class TravelController < ApplicationController
  def europe
    @aberdeen = City.where(travel_id: 1)
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
    puts "Parámetros recibidos: #{params.inspect}"
    dream = Dream.find(params[:dream_id])
    travel_ids = params[:travel_ids].reject { |id| id.to_i.zero? }
    travel_ids.each do |travel_id|
      travel = Travel.find(travel_id)
      Goal.create(dream_id: dream.id, travel_id: travel_id, user_id: current_user.id, title: travel.title)
    end
  end
  
  private
  
  def travel_params
    params.require(:travel).permit(:travel_id)
  end
end