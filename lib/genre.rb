class Genre
  attr_accessor :name, :songs, :artists
  @@all = []

  def initialize(name)
    @name = name
    @songs = []
    @artists = []
    save
  end

  def self.all
    @@all
  end

  def save
    @@all << self
  end

  def self.destroy_all
    @@all = []
  end

  def artists 
    @artists
  end
  def self.create(name)
    genre = Genre.new(name)
    @@all << genre
    genre
  end

end
