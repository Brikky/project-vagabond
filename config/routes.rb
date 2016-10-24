Rails.application.routes.draw do
  resources :users, only: [:show, :new, :create]

  get 'sessions/new'
  get '/login', to: 'sessions#new', as: :login

  get '/login' => 'sessions#new'
  post '/login' => 'sessions#create'
  get '/logout' => 'sessions#destroy'

  get '/signup' => 'users#new'
  post '/users' => 'users#create'

  root to: 'sessions#new'
end
