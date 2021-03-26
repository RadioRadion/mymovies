class CreateCreationArtists < ActiveRecord::Migration[6.0]
  def change
    create_table :creation_artists do |t|
      t.references :creation, null: false, polymorphic: true
      t.references :artist, null: false, foreign_key: true

      t.timestamps
    end
  end
end
