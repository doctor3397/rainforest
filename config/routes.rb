Rails.application.routes.draw do
  resources :products
  resource :users, only: [:new, :create]
end
