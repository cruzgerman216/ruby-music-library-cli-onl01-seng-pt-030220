class Artist
  attr_accessor :name, :songs, :genres
  @@all = []
  def initialize(name, genres =nil)
    @name = name
    @songs = []
    @genres = []
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

  def self.create(name)
    artist = Artist.new(name)
    @@all << artist
    artist
  end


  def add_song(song)
    if song.artist == nil
      song.artist = self
    end
    if !@songs.include?(song)
        @songs << song
      end
  end

end
