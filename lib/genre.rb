class Genre
  
  attr_accessor :name
  
  @@all = []
  
  def initialize(name)
    @name = name
    @@all << self
  end
  
  def songs
    Song.all.select do |song|
      song.genre == self
    end
  end
  
  def artists
    songs.collect do |song|
      song.artist
    end
  end
  # do we need self here?
  
  def self.all
    @@all
  end
  
end