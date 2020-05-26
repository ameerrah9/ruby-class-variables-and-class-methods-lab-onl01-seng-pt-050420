class Song
    #class varibale created to keep track of the number of new songs that are created from the class
    @@count = 0
    @@artists = []
    @@genres = []
    #class method that returns the total number of our count
    def self.count
        @@count
    end
    #returns an array of all of the artists with no repeats
    def self.artists
        @@artists.uniq
    end
    #returns an array of all the unique genres
    #.uniq doesn't allow duplicates
    def self.genres
        @@genres.uniq
    end
    #returns a hash where keys are the names of each genre
    #each genre key should point to the number of songs that genre has
    def self.genre_count
        #this hash needs to get populated based on..
        genre_hash = {}
        @@genres.each do |genre|
            # does the hash already have a rap key?
            # does the hash already have a rock key?
            if genre_hash[genre] #check if the hash already contains a key of the particulaar genre
                genre_hash[genre] += 1 # if the particular key does exist incrment the value of the key by one
            else
                genre_hash[genre] = 1 # if not just start with oone
            end
        end
        genre_hash
    end

    def self.artist_count
        artist_hash = {}
        @@artists.each { |artist|
            artist_hash[artist] ||= 0
            artist_hash[artist] += 1
        }
        artist_hash
    end

    attr_accessor :name, :artist, :genre
    #song is intialized with a name, artist, and genre
    def initialize(name, artist, genre)
        @name, @artist, @genre = name, artist, genre
        @@count += 1    #count should be incremented each time we add a new song, each time being incremented by 1
        @@artists << artist #adds the artist to the array whenever we add a new song to our list
        @@genres << genre #adds the genre of the song being created to the array whenever we add a new song to our list
    end

end
