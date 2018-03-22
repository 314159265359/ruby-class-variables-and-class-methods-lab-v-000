class Song

  @@count = 0
  @@artists = []
  @@genres = []

  attr_accessor :name, :artist, :genre

  def initialize(name,artist,genre)
    @name = name
    @artist = artist
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

  def genre_count
    genre_counter = Hash.new{ |h, k| h[k] = [] }

    @@genres.each do |v|
    genre_counter[v] += 1
    end

    genre_counter.each do |k, v|
    k=>v
   end
  end

end
