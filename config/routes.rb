Rails.application.routes.draw do
  # STEP 1: A ROUTE triggers a controller action
  # verb "/urls" => "namespace/controllers#action"
  namespace :api do

  get "/actors" => "actors#index"
  end
end


# This works
# Rails.application.routes.draw do
#   # STEP 1: A ROUTE triggers a controller action
#   # verb "/urls" => "namespace/controllers#action"
#   get "/actor_url" => "api/actors#actor_method"
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