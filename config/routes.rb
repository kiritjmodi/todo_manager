Rails.application.routes.draw do
 # get "todos", to: "todos#index"
 # post "todos/create", to: "todos#create"
 # get "todos/:id", to: "todos#show"
 #get "users/login", to: "users#login"
  resources :todos
  resources :users
  get "users", to: "users#index"
  post "users/login", to: "users#login"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
