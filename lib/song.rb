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
    @@artist_count.has_key?(artist) ? @@artist_count[artist] += 1 : @@artist_count[artist] = 1
  end

  def self.count
    @@count
  end

  def self.genres
    @@genre_count.keys
  end

  def self.artists
    @@artist_count.keys
  end

  def self.genre_count
    @@genre_count
  end

  def self.artist_count
    @@artist_count
  end

end
