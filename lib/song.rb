class Song
  attr_accessor :name, :artist, :genre
  @@all = []

  def initialize(name, artist=nil, genre = nil)
    @name = name
      self.artist = artist if artist != nil
      self.genre = genre if genre != nil
    save
  end

  def self.all
    @@all
  end

  def self.destroy_all
    @@all = []
  end

  def save
    @@all << self
  end
  def artist=(artist)
    @artist = artist
    artist.add_song(self)
  end

  def genre=(genre)
    @genre = genre
  end
  def self.create(name)
    song = Song.new(name)
    @@all << song
    song

  end


end
