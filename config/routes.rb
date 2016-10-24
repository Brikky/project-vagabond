Rails.application.routes.draw do
  get 'sessions/new'

  get 'users/new'

  get 'users/show'

  get 'users/index'

  get 'users/edit'

  get 'posts/new'

  get 'posts/show'

  get 'posts/index'

  get 'posts/edit'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
