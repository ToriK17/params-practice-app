Rails.application.routes.draw do
  # EXAMPLE HTML ROUTE
  # get "/photos" => "photos#index"

  # EXAMPLE JSON ROUTE WITH API NAMESPACE
  # namespace :api do
  #   get "/photos" => "photos#index"
  # end
  namespace :api do 
  get "/params/" => "params#show"
  # using query parameters
  # http://localhost:3000/api/params?user_input=hello
    
  get "/params/:user_input" => "params#show"
  # using segment parameters
  # http://localhost:3000/api/params/yo

  post "/params/" => "params#body_params" 
  # using body parameters
  # http://localhost:3000/api/params/
  # Then multipart form
  end 
end
