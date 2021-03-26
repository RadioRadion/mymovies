class Movie < ApplicationRecord
  has_many :user_movies
  has_many :users, through: :user_movies
  has_many :creation_artists, foreign_key: "creation_id"
  has_many :artists, through: :creation_artists
end
