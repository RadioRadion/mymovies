class RemoveFavoriteToMovies < ActiveRecord::Migration[6.0]
  def change
    remove_column :movies, :favorite, :boolean
  end
end
