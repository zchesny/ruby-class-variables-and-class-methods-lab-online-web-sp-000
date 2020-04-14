require 'pry'

class Song
  attr_accessor :name, :artist, :genre

  @@count = 0
  @@genres = {}
  @@artists = {}

  def initialize(name, artist, genre)
    @name = name
    @artist = artist
    @genre = genre
    @@count += 1
    #@@genres.has_key?(genre) ? @@genres[genre] += 1 : @@genres[genre] = 1
    
    if @@artists.include?(artist)
      puts "HI THERE"
      binding.pry
      @@artists[artist] = 1
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
    @@genres
  end

  def self.artist_count
    @@artists
  end

end
