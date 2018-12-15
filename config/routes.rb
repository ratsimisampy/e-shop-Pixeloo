Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get '/admin/user/*/edit', to: 'devise/registrations#edit' 
  get "/catalogues/show", to: "catalogues#show", as: "catalogues"
  get "/categories/show", to: "categories#show", as: "categories"
  resources :categories
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  resources :orders
  resources :line_items
  resources :charges, only: [:new, :create]
  resources :carts
  root 'home#index'
  devise_for :users
  resources :items
  put '/statusupdate', to: 'order_validations#update'
  resources :order_validations
end
