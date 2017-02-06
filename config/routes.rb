Rails.application.routes.draw do
  resources :products
  resource :users, only: [:new, :create]
  resource :sessions, only: [:new, :create, :destroy]
end
