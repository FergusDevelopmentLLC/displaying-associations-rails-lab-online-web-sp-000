class Artist < ActiveRecord::Base
    has_many :songs

    def song_count
        Song.where(:artist => self).count
    end
end
