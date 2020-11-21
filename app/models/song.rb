class Song < ActiveRecord::Base
  belongs_to :artist
  
  validate :artist_name
  validate :index_format


  def artist_name
    self.artist.name
  end

  def index_format
    self.artist_name + " - " + self.title
  end
end
