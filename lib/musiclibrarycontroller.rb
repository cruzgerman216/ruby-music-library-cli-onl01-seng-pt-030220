class MusicLibraryController

  def initialize(path)
    mi = MusicImporter.new(path)
  end
end
