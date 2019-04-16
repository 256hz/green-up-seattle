Rails.application.routes.draw do

  resources :hoods
  resources :users

  get 'games', to: 'games#index'
  get 'games/round', to: 'games#round'
  post 'games/round', to: 'games#round'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
