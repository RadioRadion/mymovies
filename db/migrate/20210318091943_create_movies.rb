class CreateMovies < ActiveRecord::Migration[6.0]
  def change
    create_table :movies do |t|
      t.string :name

      t.timestamps
    end
    add_index :movies, :name, unique: true
  end
end
