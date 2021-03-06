class Artist
  
  attr_accessor :name, :genre
  
  @@all = []
  
  def initialize(name)
    @name = name
    @genre = genre
    @@all << self
  end
  
  def self.all
    @@all
  end
  
  def new_song(name, genre)
    song = Song.new(name, self, genre)
    
  end
  
  def songs 
    Song.all.select do |song|
      song.artist == self
    end
  end
  
  def genres
    self.songs.collect do |song|
      song.genre 
      # do we need self here?
    end
  end
  
end