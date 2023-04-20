Rails.application.routes.draw do

  get "/clowns" => "clowns#index"
  get "/clowns/:id" => "clowns#show"
  post "/clowns" => "clowns#create"
  patch "clowns/:id" => "clowns#update"
  delete "clowns/:id" => "clowns#destroy"

  get "/customers" => "customers#index"
  get "/customers/:id" => "customers#show"
  post "/customers" => "customers#create"
  patch "/customers/:id" => "customers#update"
  delete "/customers/:id" => "customers#destroy"

  get "/bookings" => "bookings#index"
  get "/bookings/:id" => "bookings#show"
  post "/bookings" => "bookings#create"
  patch "/bookings/:id" => "bookings#update"
  delete "/bookings/:id" => "bookings#destroy"

end
