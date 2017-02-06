Rails.application.routes.draw do
  get 'reviews/show'

  get 'reviews/create'

  get 'reviews/destroy'

  resources :products
  resource :users, only: [:new, :create]
  resource :sessions, only: [:new, :create, :destroy]
end
