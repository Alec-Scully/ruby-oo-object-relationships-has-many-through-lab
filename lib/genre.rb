class Genre
    attr_reader :name

    @@all = []

    def initialize(name)
        @name = name
        self.class.all << self
    end

    def self.all
        @@all
    end

    def songs
        genre_songs = Song.all.select do | songs |
            songs.genre == self
        end
    end

    def artists
        genre_artists = self.songs.map do | songs |
            songs.artist
        end
    end
end
