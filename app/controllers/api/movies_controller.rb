class Api::MoviesController < ApplicationController

  def index 
    @movies = Movie.all
    render 'index.json.jbuilder'
  end

  # def index
  # @movies = Movie.where(english: true)
  # render "index.json.jbuilder"
  # end

  def create
    @movie = Movie.new(
      title: params["title"],
      year: params["year"],
      plot: params["plot"],
      director: params["director"]
      )
    if @movie.save
      render 'show.json.jbuilder'
    else
    render json: {errors: @product.errors.full_messages}, status: :unprocessable_entity
    end
  end

  def show
    @movie = Movie.find(params["id"])
    render 'show.json.jbuilder'  
  end

  def update
    @movie = Movie.find(params["id"])
    @movie.title = params["title"] || @movie.title
    @movie.year = params["year"] || @movie.year
    @movie.plot = params["plot"] || @movie.plot
    @movie.director = params["director"] || @movie.director
    if @movie.save
      render 'show.json.jbuilder'
    else
    render json: {errors: @product.errors.full_messages}, status: :unprocessable_entity
    end
  end

  def destroy
    @movie = Movie.find(params["id"])
    @movie.destroy
    render json: {message: "this movie has been deleted from your catalog"}
  end
end