require 'pry'

class Song
  attr_accessor :name, :artist, :genre

  @@count = 0
  @@genres = []
  @@artists = []
  @@genre_count = {}
  @@artist_count = {}

  def initialize(name, artist, genre)
    @name = name
    @artist = artist
    @genre = genre
    @@count += 1
    @@genre_count.has_key?(genre) ? @@genre_count[genre] += 1 : @@genre_count[genre] = 1
    #   @@artists[artist] = @@artists[artist] + 1
    # else
    #   @@artists[artist] = 1
    # end
  end

  def self.count
    @@count
  end

  def self.genres
    @@genres.keys
  end

  def self.artists
    @@artists.keys
  end

  def self.genre_count
    @@genre_count
  end

  def self.artist_count
    @@artist_count
  end

end
