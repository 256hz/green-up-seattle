Rails.application.routes.draw do

  resources :sub_hoods
  resources :hoods, only: [:show, :index]
  resources :users

  get 'games', to: 'games#index'
  get 'games/round', to: 'games#round'
  post 'games/round', to: 'games#answer'
  get '/games/game_end', to: 'games#game_end'

  post '/', to: 'sessions#create'
  get '/logout', to: 'sessions#logout'

  root 'users#index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
