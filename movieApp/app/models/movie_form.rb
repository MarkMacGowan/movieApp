class MovieForm < ApplicationRecord
  validates :movie_id, presence: true
  validates :movie_id,uniqueness:true
  validates :title, presence: true
  validates :year, presence:true
  validates :cast, length: {in: 4..50}
  validates :description, presence: true
  validates :description, length: {maximum:50}
  validates :dvd, acceptance: true
  
end
