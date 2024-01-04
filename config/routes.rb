Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
get "/users" => "users#index"
get "/users/:id" => "users#show"
post "/users" => "users#create"
patch "/users/:id" => "users#update"
delete "/users/id" => "users#destroy"

get "/rooms" => "rooms#index"
get "/rooms/:id" => "rooms#show"
post "/rooms" => "rooms#create"
patch "/rooms/:id" => "rooms#update"
delete "/rooms/id" => "rooms#destroy"

get "/reservations" => "reservations#index"
get "/reservations/:id" => "reservations#show"
post "/reservations" => "reservations#create"
patch "/reservations/:id" => "reservations#update"
delete "/reservations/id" => "reservations#destroy"


end
