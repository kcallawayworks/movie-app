
class Movie < ApplicationRecord
  validates :title, presence: true, :title, length: { minimum: 3 }

  belongs_to :movie

  def movie_sad_path
    if @movie.save
      render 'show.json.jbuilder'
    else
      render json: {errors:@movie.errors.full_messages}, status: :unprocessible_entity
    end
  end
end