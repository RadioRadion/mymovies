class CreateMovieArtists < ActiveRecord::Migration[6.0]
  def change
    create_table :movie_artists do |t|
      t.references :movie, null: false, foreign_key: true
      t.references :artist, null: false, foreign_key: true

      t.timestamps
    end
  end
end
