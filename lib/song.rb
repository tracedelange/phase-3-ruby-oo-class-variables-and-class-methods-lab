class Song

    @@count = 0
    @@artists = []
    @@genres = []

    attr_reader :name, :artist, :genre

    def initialize(name, artist, genre)
        @artist = artist
        @name = name
        @genre = genre

        @@count += 1
        @@artists << artist
        @@genres << genre
    end

    def self.count
        @@count
    end

    def self.artists
        @@artists.uniq
    end

    def self.genres
        @@genres.uniq
    end

    def self.artist_count
        hash = {}
        @@artists.each do |artist|
            if hash.key?(artist) #key exists, add by one
                hash[artist] += 1
            else #Key does not exist, initialize it w starting value of 1
                hash[artist] = 1
            end
        end
        hash
    end

    def self.genre_count
        hash = {}
        @@genres.each do |artist|
            if hash.key?(artist) #key exists, add by one
                hash[artist] += 1
            else #Key does not exist, initialize it w starting value of 1
                hash[artist] = 1
            end
        end
        hash
    end

end

