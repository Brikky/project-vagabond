Rails.application.routes.draw do
  get 'cities/index'

  get 'cities/show'

  get 'cities/new'

  resources :users do
    resources :posts
  end
  resources :cities do
    resources :posts
  end

  get 'sessions/new'
  get '/login', to: 'sessions#new', as: :login

  get '/login' => 'sessions#new'
  post '/login' => 'sessions#create'
  get '/logout' => 'sessions#destroy'

  get '/signup' => 'users#new'
  post '/users' => 'users#create'

  root to: 'posts#index'
end
