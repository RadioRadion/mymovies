class CreateTvShows < ActiveRecord::Migration[6.0]
  def change
    create_table :tv_shows do |t|
      t.string :name

      t.timestamps
    end
    add_index :tv_shows, :name, unique: true
  end
end
