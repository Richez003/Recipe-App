Rails.application.routes.draw do
  get 'shopping_lists/index'
  devise_for :users
  root "recipes#public"
  match 'public_recipes' => 'public_recipes#index', as: :public_recipes, via: :get

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  resources :users
  resources :recipes, except: :update do
    resources :recipe_foods
  end
  resources :foods, except: :update

  resources :inventories do
    resources :inventory_foods
  end
end
