class MusicImporter
  attr_accessor :path, :files

  def initialize(path)
      @path = path
      @files = []
      @files << path
  end
end
