class MusicLibraryController

  def initialize(path = './db/mp3s')
    mi = MusicImporter.new(path)
  end
end
