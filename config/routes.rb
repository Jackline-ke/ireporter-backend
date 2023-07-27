Rails.application.routes.draw do
  resources :categories
  resources :locations
  resources :posts
  resources :flags
  resources :users
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  resources :categories, only: [:index, :show]
  # Defines the root path route ("/")
  # root "articles#index"
end


