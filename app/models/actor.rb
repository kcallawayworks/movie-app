class Actor < ApplicationRecord
  belongs_to :movie

  validates :first_name, :last_name, length: { minimum: 2 }
  validates :known_for, presence: true
  validates :age, numericality: { greater_than: 13 }

  def actor_sad_path
    if @actor.save
    render 'show.json.jbuilder'
    else
    render json: {errors:@actor.errors.full_messages}, status: :unprocessible_entity
    end
  end
end