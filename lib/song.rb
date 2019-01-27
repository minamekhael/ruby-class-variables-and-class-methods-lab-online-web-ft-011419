class Song
  attr_accessor :name, :artist, :genre
  
  @@song_count = 0
  @@genres = []
  @@artists = []
  
  def initialize(name, artist, genre)
    @name = name
    @artist = artist
    @genre = genre
    @@artists << artist
    @@genres << genre
    @@count
  end
  
end