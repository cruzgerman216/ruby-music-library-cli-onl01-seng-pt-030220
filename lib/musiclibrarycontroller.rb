class MusicLibraryController

  def initialize(path = './db/mp3s')
    mi = MusicImporter.new(path).import
  end

  def call
    puts "Welcome to your music library!"
  end
end
