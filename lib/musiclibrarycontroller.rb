class MusicLibraryController

  def initialize(path = './db/mp3s')
    mi = MusicImporter.new(path).import
  end

  def call
    puts "welcome to your music library!"
  end
end
