Rails.application.routes.draw do
  get 'gamer/assemble_pc_gamer'
  get 'gamer/buy_pc_gamer'
  get 'gamer/buy_console'
  get 'gamer/buy_game'
  get 'gamer/travel_esports'

  get 'house/buy_local_house'

  get 'new_car/car'
  get 'new_car/profit_car'

  get 'business/entrepeneur'
  get 'business/software'

  get 'dreams/my_own_business'
  get 'dreams/travel'
  get 'dreams/gamer'
  get 'dreams/new_car'
  get 'dreams/new_house'
  get 'dreams/happy'
  get 'dreams/healthy'
  get 'dreams/friends'
  get 'dreams/gasoline'
  get 'dreams/new_skill'
  get 'dreams/buy_wish'
  get 'dreams/love'

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
