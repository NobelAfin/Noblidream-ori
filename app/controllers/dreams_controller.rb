class DreamsController < ApplicationController

  def index
    @dreams = Dream.all
  end

  def new
    @dreams = Dream.new
  end

  def create
    @dreams = dream.new(dream_params)
    @dreams.user = current_user
  end

  def my_own_business
  end

  def travel
  
  end
  
  def gamer
  end

  def new_car
  	
  end
  def new_house
  	
  end

  def happy
  	
  end

  def healthy
  	
  end

  def friends
  	
  end

  def new_skill
  	
  end

  def buy_wish
  	
  end

  def love
  	
  end

  def save_time_and_expenses
    
  end
end
