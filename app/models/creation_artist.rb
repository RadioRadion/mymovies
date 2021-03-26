class CreationArtist < ApplicationRecord
  belongs_to :creation, polymorphic: true
  belongs_to :artist
end
