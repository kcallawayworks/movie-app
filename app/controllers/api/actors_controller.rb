class Api::ActorsController < ApplicationController

  def index
    # we need to call the info
    @actors = Actor.all
    render 'index.json.jbuilder'
  end

end



# This works
# class Api::ActorsController < ApplicationController

#   def actor_method
#     render 'actor_view.json.jbuilder'
#   end

# end