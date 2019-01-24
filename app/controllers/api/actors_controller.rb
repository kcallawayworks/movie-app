class Api::ActorsController < ApplicationController

  def one_movie
    @movie = Movie.first
    render 'one_movie.json.jbuilder'
  end

end

# class Api::ActorsController < ApplicationController

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