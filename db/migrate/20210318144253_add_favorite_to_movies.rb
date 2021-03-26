class AddFavoriteToMovies < ActiveRecord::Migration[6.0]
  def change
    add_column :movies, :favorite, :boolean, default: false
    Movie.update_all(favorite: false)
  end
end
