class Song < ActiveRecord::Base
  belongs_to :artist

  def artist_name
    # binding.pry
    Artist.find(self.artist_id)[:name]
    # binding.pry
  end
end
