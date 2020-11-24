require 'pry'

class Song
    attr_reader :name
    attr_accessor :artist, :genre

    @@all = []

    def initialize(name, artist, genre)
        @name = name
        @artist = artist
        @genre = genre

        self.class.all << self
    end

    def self.all
        @@all
    end
end
