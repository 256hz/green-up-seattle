Rails.application.routes.draw do

  resources :hoods
  resources :users

  get 'game/round', to: 'game#round'
  post 'game/round', to: 'game#round'
  
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
