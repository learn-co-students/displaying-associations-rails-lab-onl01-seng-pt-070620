class Song < ActiveRecord::Base

  belongs_to :artist

  def artist_name
    
    @artists = Artist.all

    @artists.each do |artist|
      @name = artist.name
    end

    @name

  end

  
end
