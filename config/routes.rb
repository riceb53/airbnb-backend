Rails.application.routes.draw do
 
  get "/users" => "users#index"
  get "/users/:id" => "users#show"
  post "/users" => "users#create"
  patch "/users/:id" => "users#update"
  delete "/users/id" => "users#destroy"

  post "/sessions" => "sessions#create"

  get "/rooms" => "rooms#index"
  get "/rooms/:id" => "rooms#show"
  post "/rooms" => "rooms#create"
  patch "/rooms/:id" => "rooms#update"
  delete "/rooms/id" => "rooms#destroy"

  get "/reservations" => "reservations#index"
  get "/reservations/:id" => "reservations#show"
  post "/reservations" => "reservations#create"
  patch "/reservations/:id" => "reservations#update"
  delete "/reservations/:id" => "reservations#destroy"











  get "/reviews" => "reviews#index"
  get "/reviews/:id" => "reviews#show"
  post "/reviews" => "reviews#create"
  # patch "/reviews/:id" => "reviews#update"
  # delete "/reviews/id" => "reviews#destroy"

end
