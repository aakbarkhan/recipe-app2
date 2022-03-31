Rails.application.routes.draw do
  devise_for :users
  # get 'public_recipes/index'
  # get 'public_recipes/show'
  # get 'public_recipes/new'
  # get 'recipe_foods/index'
  # get 'recipe_foods/show'
  # get 'recipe_foods/new'
  # get 'recipes/index'
  # get 'recipes/show'
  # get 'recipes/new'
  # get 'foods/index'
  # get 'foods/show'
  # get 'foods/new'
  # get 'users/index'
  # get 'users/show'
  # get 'users/new'
  # root to: "home#index"
  root "foods#index"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  resources :foods, only: [:index, :show, :new, :create, :destroy]
  # Defines the root path route ("/")
  # root "articles#index"
end
