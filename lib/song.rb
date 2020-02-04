class Song
  attr_accessor :name :artist :genre

  @@count = 0 #initialize a Class Variable set to zero
  @@genres = [] #initialize a Class Variable set to an empty array
  @@artists = [] #initialize a Class Variable set to an empty array

  def initialize(name, artist, genre)
    @name = name
    @artist = artist
    @genre = genre
    @@count += 1 #increment count whenever a song instance is created
    @@genres << genre
    @@artists << artist
  end

  #class method below
  def self.count
    @@count
  end

  #class method below
  def self.genres
    @@genre
  end

  #class method below
  def self.artists
    @@artists
  end

  #class method below
  def self.genre_count
    gen_count_hist = {}
    if gen_count_hist.include?(@genre)
      gen_count_hist[@genre] << @genre
    else
      gen_count_hist[@genre] = []
      gen_count_hist[@genre] << @genre
    end
    return gen_count_hist
  end


  def self.artist_count
    artist_count_hist = {}
    if artist_count_hist.include?(@artist)
      artist_count_hist[@genre] << @genre
    else
      artist_count_hist[@genre] = []
      artist_count_hist[@genre] << @genre
    end
      return artist_count_hist
  end

end
