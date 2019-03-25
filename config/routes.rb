Rails.application.routes.draw do
  # EXAMPLE HTML ROUTE
  # get "/photos" => "photos#index"

  # EXAMPLE JSON ROUTE WITH API NAMESPACE
  # namespace :api do
  #   get "/photos" => "photos#index"
  # end
  namespace :api do

    get '/teams' => 'teams#index'
    post '/teams' => 'teams#create'
    get '/teams/:id' => 'teams#show'
  end
end
