class Artist < ActiveRecord::Base
    has_many :songs

    validate :song_count

    def song_count
        self.songs.count
    end
end
