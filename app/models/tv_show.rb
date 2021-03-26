class TvShow < ApplicationRecord
  has_many :creations
  has_many :artists, through: :creations
end
