class Song

  @@count = 0
  @@artists = []
  @@genres = {}

  attr_accessor :name, :artist, :genre

  def initialize(name,artist,genre)
    @name = name
    @artist = artist
    @genre = genre
    @@count += 1
    @@artists << artist
  end

  def self.count
    @@count
  end

  def self.artists
    artists == []
    @@artists.each do |artist|
      if !artists.include?(artist)
        artists << artist
      end
    end
    artists
  end


end
