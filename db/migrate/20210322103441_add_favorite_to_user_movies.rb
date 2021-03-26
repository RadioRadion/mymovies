class AddFavoriteToUserMovies < ActiveRecord::Migration[6.0]
  def change
    add_column :user_movies, :favorite, :boolean, default: false
  end
end
