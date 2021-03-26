class Artist < ApplicationRecord
  has_many :creation_artists
  has_many :movies, through: :creation_artists, source: :creation, source_type: 'Movie'
  has_many :tv_shows, through: :creation_artists, source: :creation, source_type: 'TvShow'
end
