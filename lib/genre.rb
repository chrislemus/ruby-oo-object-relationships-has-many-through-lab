class Genre
  attr_reader :genre, :name
  @@all = []
  def initialize(genre)
    @genre = genre
    @name = genre
    @@all << self
  end
  
  def songs
    Song.all.select {|song| song.genre == self}
  end

  def artists
    songs.map {|song| song.artist}
  end

  def self.all
    @@all
  end
end