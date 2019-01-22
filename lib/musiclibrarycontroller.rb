class MusicLibraryController

  attr_accessor(:path)

  def initialize(path = "./db/mp3s")
    music_importer=MusicImporter.new(path)
    music_importer
  end
end
