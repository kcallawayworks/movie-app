Rails.application.routes.draw do

  namespace :api do
    get "/movies" => "movies#index" 
    post "/movies" => "movies#create"
    get "/movies#:id" => "movies#show"
    patch "/movies#:id" => "movies#update"
    delete "/movies#:id" =>"movies#destroy"


    get "/actors" => "actors#index" 
    post "/actors" => "actors#create"
    get "/actors/:id" => "actors#show"
    patch "/actors/:id" => "actors#update"
    delete "/actors/:id" =>"actors#destroy"
  end
end



# Got it!!! This works for posting by id from insomnia
# Rails.application.routes.draw do
#   # STEP 1: A ROUTE triggers a controller action
#   # verb "/urls" => "namespace/controllers#action"

  # namespace :api do
  #   get "/one_actor_segment/:wildcard" => "actors#one_actor_segment"
  # end
#   namespace :api do
#     post "/one_actor" => "actors#one_actor_query"
#   # get "/movie" => "actors#one_movie"
    # patch "/products/:id" => 'actors#update'
    # delete "/products/:id" => 'actors#destroy' 
#   end
# end
# # This works
#     get "/movies" => "actors#movie_index"
# Rails.application.routes.draw do
#   # STEP 1: A ROUTE triggers a controller action
#   # verb "/urls" => "namespace/controllers#action"
#   namespace :api do
  

# This works
# Rails.application.routes.draw do
#   # STEP 1: A ROUTE triggers a controller action
#   # verb "/urls" => "namespace/controllers#action"
#   get "/actor_url" => "api/actors#actor_method"
# end


  # get "/movie" => "actors#one_movie"

#   # get "/actors" => "actors#index"
#   # end

#     get "/movies" => "actors#movie_index"
#   end
# end


# Done Using the rails console:

# Add 2-3 more actors
# Find the first actor
# Find the last actor
# Search by id
# Search by first name
# Delete an actor
# Update the known_for of an actor
# Delete all the actors you created
# Create an api namespaced Actors controller. Make an associated route and jbuilder view to display a single Actor based on id. Remember to use an instance variable!