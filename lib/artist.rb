require 'pry'

class Artist
    attr_reader :name
    attr_accessor :genre

    @@all = []

    def initialize(name)
        @name = name

        self.class.all << self
    end

    def self.all
        @@all
    end

    def songs
        Song.all.select do | song |
            # binding.pry
            song.artist == self
        end
    end

    def new_song(name, genre)
        new_song = Song.new(name, self, genre)
    end

    def genres
        artist_genre = self.songs.map do | song |
            song.genre
        end
    end
end
