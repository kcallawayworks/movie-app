 class Api::ActorsController < ApplicationController

  def index 
    @actors = Actor.all.order(age: :desc)
    render 'index.json.jbuilder'
  end

  def create
    @actor = Actor.new(
      first_name: params[:first_name],
      last_name: params[:last_name],
      known_for: params[:known_for],
      gender: params[:gender],
      age: params[:age])
      # movie_id: params[:movie_id]
      # )
    if @actor.save
      render 'show.json.jbuilder'
    # else
    #   render json: {errors: @product.errors.full_messages}, status: :unprocessable_entity
    end


  end

  # def show
  #   @actor = Actor.find(params["id"])
  #   render 'show.json.jbuilder'  
  # end

  # def update
  #   @actor = Actor.find(params["id"])
  #   @actor.first_name = params["first_name"] || @actor.first_name
  #   @actor.last_name = params["last_name"] || @actor.last_name
  #   @actor.known_for = params["known_for"] || @actor.known_for
  #   @actor.gender = params["gender"] || @actor.gender
  #   @actor.age = params["age"] || @actor.age
  #   @movie_id = params ["movie_id"] || @actor.movie_id
  #   if @actor.save
  #     render 'show.json.jbuilder'
  #   else
  #   render json: {errors: @product.errors.full_messages}, status: :unprocessable_entity
  #   end
  # end

  # def destroy
  #   @actor = Actor.find(params["id"])
  #   @actor.destroy
  #   render json: {message: "this actor has been deleted from your catalog"}
  # end
end




#   end# class Api::ActorsController < ApplicationController
#   def index
#     @movies = Movie.all

#     # search_term = params[:search]
#     # if search_term
#     #   @contacts = @contacts.where("first_name ILIKE ? OR last_name ILIKE ? OR email ILIKE ? OR middle_name ILIKE ?", "%#{search_term}%", "%#{search_term}%", "%#{search_term}%", "%#{search_term}%")
#     # end

#     # render 'index.json.jbuilder'
#     render "index.json.jbuilder"
#   end
# end

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