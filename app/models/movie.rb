class Movie < ApplicationRecord
  has_many :user_movies
  has_many :users, through: :user_movies
  # has_many :movie_artists
  # has_many :artists, through: :movie_artists
  has_many :favorites_movies
  has_many :creations
  has_many :artists, through: :creations
end
