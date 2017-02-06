Rails.application.routes.draw do
  resources :products do
    resources :reviews, only: [:show, :create, :destroy]
  end

  resource :users, only: [:new, :create]
  resource :sessions, only: [:new, :create, :destroy]
end


# Prefix Verb   URI Pattern                                 Controller#Action
# product_reviews POST  /products/:product_id/reviews(.:format)     reviews#create
# product_review GET    /products/:product_id/reviews/:id(.:format) reviews#show
#                DELETE /products/:product_id/reviews/:id(.:format) reviews#destroy
#       products GET    /products(.:format)                         products#index
#                POST   /products(.:format)                         products#create
#    new_product GET    /products/new(.:format)                     products#new
#   edit_product GET    /products/:id/edit(.:format)                products#edit
#        product GET    /products/:id(.:format)                     products#show
#                PATCH  /products/:id(.:format)                     products#update
#                PUT    /products/:id(.:format)                     products#update
#                DELETE /products/:id(.:format)                     products#destroy
#          users POST   /users(.:format)                            users#create
#      new_users GET    /users/new(.:format)                        users#new
#       sessions POST   /sessions(.:format)                         sessions#create
#   new_sessions GET    /sessions/new(.:format)                     sessions#new
#                DELETE /sessions(.:format)                         sessions#destroy
