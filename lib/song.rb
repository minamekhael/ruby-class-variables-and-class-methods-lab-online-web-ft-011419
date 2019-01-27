class Song
  attr_accessor :name, :artist, :genre
  
  @@song_count = 0
  @@genres = []
  @@artists = []
  
  def initialize(name, artist, genre)
    @name = name
    @artist = artist
    @genre = genre
    @@count += 1
    @@artists << artist
    @@genres << genre
  end
  
  def Song.count
    @@count
  end
  
  def Song.artists
    @@artists.uniq
  end
  
  def Song.genres
    @@genres.uniq
  end
  
  def Song.genre_count
    genre_count = {}
    @@genres.each do |genre|
      if genre_count[genre]
        genre_count[genre] += 1 
      else
        genre_count[genre] = 1
      end
    end
    genre_count
  end
  @@artists = []
  
  def Song.artist_count
    @@artists.inject(Hash.new(0)) { |total, i| total[i] += 1 ;total}
  end
end