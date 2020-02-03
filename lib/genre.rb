class Genre

    @@all = []
    attr_accessor :name

    def initialize(name)
        @name = name
        @@all << self
    end 

    def songs
        Song.all.select { |song| song.genre = self }
    end 

    def artists
        songs.map { |genre| genre.artist}
    end 

    def self.all
        @@all
    end 

end 