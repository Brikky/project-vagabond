Rails.application.routes.draw do

  resources :users do
    resources :posts, only: [:new, :update, :index]
  end
  resources :cities do
    resources :posts, only: [:new, :index]
  end

  resources :posts

  get 'sessions/new'
  get '/login', to: 'sessions#new', as: :login

  get '/login' => 'sessions#new'
  post '/login' => 'sessions#create'
  get '/logout' => 'sessions#destroy'

  get '/signup' => 'users#new'
  post '/users' => 'users#create'

  root to: 'posts#index'
end
