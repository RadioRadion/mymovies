class DropTableMovieArtist < ActiveRecord::Migration[6.0]
  def change
    drop_table(:movie_artists)
  end
end
