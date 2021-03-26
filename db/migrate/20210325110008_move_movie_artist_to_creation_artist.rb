class MoveMovieArtistToCreationArtist < ActiveRecord::Migration[6.0]
  def change
    CreationArtist.insert_all!(
      MovieArtist.all.map do |movie_artist|
        { creation_type: 'Movie',
          creation_id: movie_artist.id,
          artist_id: movie_artist.artist_id,
          created_at: DateTime.now,
          updated_at: DateTime.now }
      end
    )
    MovieArtist.destroy_all
  end
end
