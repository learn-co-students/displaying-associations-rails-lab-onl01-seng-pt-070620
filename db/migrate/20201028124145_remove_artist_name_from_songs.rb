class RemoveArtistNameFromSongs < ActiveRecord::Migration[5.0]
  def change
    remove_column :songs, :artist_name
  end
end
