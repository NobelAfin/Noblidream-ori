Rails.application.routes.draw do

  get 'dreams_in_process/olympic_games'

  get 'registration/introduction'
  get 'registration/selection'
  get 'registration/quick_registration'
  get 'registration/part_1a'
  get 'registration/part_1b'
  get 'registration/part_2a'
  get 'registration/part_2b'

  get 'buy_dream/electronic', to: "buy_dream#electronic"

  get 'new_skill/coding'
  get 'new_skill/cook'
  get 'new_skill/new_language'
  get 'new_skill/design'
  get 'new_skill/robotics'
  get 'new_skill/freelancer'

  get 'profile/overview'

  get 'save_time_and_expenses/save_the_time_in_the_market'
  get 'save_time_and_expenses/gasoline'
  get 'save_time_and_expenses/taking_care'
  get 'save_time_and_expenses/buy_from_productor'
  get 'save_time_and_expenses/laundry'
  get 'save_time_and_expenses/delivery_to_work'
  get 'save_time_and_expenses/pet_care'
  get 'save_time_and_expenses/clean_house'

  get 'friends/new_best_friends'
  get 'friends/bad_companies'

  get 'love/men'

  get 'health/espiritual'
  get 'health/fisical'
  get 'health/mental'
  get 'health/emocional'
  get 'health/pre_fisical'
  get 'health/fisical_better'
  get 'health/pre_mental'
  get 'health/mental_better'

  get 'happy/espiritual'
  get 'happy/family_united'
  get 'happy/give_to_others'
  get 'happy/life_purpose'

  get 'gamer/assemble_pc_gamer'
  get 'gamer/buy_pc_gamer'
  get 'gamer/buy_console'
  get 'gamer/buy_game'
  get 'gamer/travel_gamer'

  get 'house/buy_local_house'
  get 'house/build_local_house'
  get 'house/buy_house_abroad'
  get 'house/build_house_abroad'
  get 'house/house_exchange'
  get 'house/home_remodeling'
  get 'house/abroad_part_2'

  get 'new_car/car'
  get 'new_car/profit_car'
  get 'new_car/motorcycle'
  get 'new_car/vehicle_for_business'
  get 'new_car/bicycle'
  get 'new_car/luxury_car'

  get 'business/entrepeneur'
  get 'business/software'
  get 'business/no_initial_idea'
  get 'business/hardware'
  get 'business/local'
  get 'business/medical'
  get 'business/factory_production'
  get 'business/social_org'
  get 'business/food_and_beverages'
  get 'business/trading_company'
  get 'business/travel_and_tourism'

  get 'dreams/my_own_business'
  get 'dreams/travel'
  get 'dreams/gamer'
  get 'dreams/new_car'
  get 'dreams/new_house'
  get 'dreams/happy'
  get 'dreams/healthy'
  get 'dreams/friends'
  get 'dreams/new_skill'
  get 'dreams/buy_wish'
  get 'dreams/love'
  get 'dreams/save_time_and_expenses'

  get 'travel/europe'
  get 'travel/steps_travel'
  get 'travel/asia'
  get 'travel/america'
  get 'travel/africa'
  get 'travel/oceania'
  get 'travel/world'

  get 'pages/index'
  get 'pages/prueba'
  get 'pages/access'
  get 'pages/dreams'
  get 'pages/add_dream'


root 'pages#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
