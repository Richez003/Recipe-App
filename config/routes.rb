Rails.application.routes.draw do
  get 'inventory_foods/index'
  get 'inventory_foods/show'

  devise_for :users
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root "users#index"
  resources :inventories, only: [:index, :show, :new, :create, :destroy]
end
