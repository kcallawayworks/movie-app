
class Movie < ApplicationRecord
  # validates :first_name, :last_name length: { minimum: 2 }
  # validates :known_for, presence: true
  # validates :age { greater_than: 13 }

  belongs_to :movie


  # validates :first_name, :last_name length: { minimum: 2 }
  # validates :known_for, presence: true
  # validates :age { greater_than: 0 }
end