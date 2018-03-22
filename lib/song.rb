class Song

  attr_accessor :name, :artist, :genre

  def initialize(name,artist,genre)
    @name = name
    @artist = artist
    @genre = genre
    # @roster = Hash.new{ |h, k| h[k] = [] }
  end


end
