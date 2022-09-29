Rails.application.routes.draw do
  get 'foods/index'
  get 'foods/show'
#   # get 'recipes/index'
#   # get 'recipes/show'
#   get 'inventory_foods/index'
#   get 'inventory_foods/show'

#   devise_for :users
#   # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

#   # Defines the root path route ("/")
#   root "users#index"
#   resources :inventories, only: [:index, :show, :new, :create, :destroy]
#   resources :recipes, only: [:index, :show, :new, :create, :destroy]
# end

devise_for :users
root "recipes#public"
match 'public_recipes' => 'public_recipes#index', as: :public_recipes, via: :get

# Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
resources :users
resources :recipes do
  resources :recipe_foods
end
resources :foods, except: :update

resources :inventories do
  resources :inventory_foods
end
end
