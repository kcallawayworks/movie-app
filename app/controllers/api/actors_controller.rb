class Api::ActorsController < ApplicationController

  def one_actor_segment
    @actor = Actor.first
    render 'one_actor_segment.json.jbuilder'
  end

end

#Got it!!! This works for posting by id from insomnia


# class Api::ActorsController < ApplicationController

#   def one_actor_segment
#     @actor = Actor.first
#     render 'one_actor_segment.json.jbuilder'
#   end

# end
# class Api::ActorsController < ApplicationController

#   def one_actor_query
#     actor_id = params[:id]
#     @actor = Actor.find_by(id: params[:id])
#     render 'one_actor.json.jbuilder'
#   end
# end

# class Api::ActorsController < ApplicationController

    # def one_movie
    #   @movie = Movie.first
    #   render 'one_movie.json.jbuilder'
    # end

#   def movie_index
#     # we need to call the info
#     @movies = Movie.all
#     render 'all_movie.json.jbuilder'
#   end

  # def one_actor
  #   @actor = Actor.first
  #   render 'one_actor.json.jbuilder'
  # end

# end



# This works
# class Api::ActorsController < ApplicationController

#   def actor_method
#     render 'actor_view.json.jbuilder'
#   end

# end

  # def index
  #   # we need to call the info
  #   @actors = Actor.all
  #   render 'index.json.jbuilder'
  # end