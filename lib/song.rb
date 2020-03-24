class Song
  attr_accessor :name, :artist, :genre
  @@all = []

  def initialize(name, artist=nil, genre = nil)
    @name = name
      self.artist = artist if artist != nil
      self.genre = genre if genre != nil
      self.artist.genres << genre if artist != nil && genre != nil && !self.artist.genres.include?(genre)

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
    if !@genre.songs.include?(self)
      @genre.songs << self
    end
  end
  def self.create(name)
    song = Song.new(name)
    @@all << song
    song
  end

  def self.find_by_name(name)
    song_instance = nil
    @@all.each do |song|
      song_instance = song if song.name == name
    end
    song_instance
  end

  def self.find_or_create_by_name(name)
    if !Song.find_by_name(name)
       Song.new(name)
    end
  end

end
