Rails.application.routes.draw do
  # Routes for Flags
  resources :flags, only: [:index, :show]

  # Routes for Locations
  resources :locations, only: [:index, :show]

  # Routes for Categories
  resources :categories, only: [:index, :show]


  resources :posts, only: [:index, :show, :new, :create, :edit, :update, :destroy]
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  resources :categories, only: [:index, :show]
  # Defines the root path route ("/")
  resources :users
 
 post "/login", to: "users#login"
  post '/signup', to: 'users#signup'
  # get "/users/:id/products", to: "users#get_all_user_products"
  delete '/logout', to: 'users#logout'

end


