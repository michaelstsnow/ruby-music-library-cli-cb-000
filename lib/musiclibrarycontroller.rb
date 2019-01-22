class MusicLibraryController

  attr_accessor(:path)

  def initialize(path = "./db/mp3s")
    music_importer=MusicImporter.new(path)
    music_importer.import
  end

  def call
    puts "Welcome to your music library!"
    puts "To list all of your songs, enter \'list songs\'."
    puts "To list all of the artists in your library, enter \'list artists\'."
    puts "To list all of the genres in your library, enter \'list genres\'."
    puts "To list all of the songs by a particular artist, enter \'list artist\'."
    puts "To list all of the songs of a particular genre, enter \'list genre\'."
    puts "To play a song, enter \'play song\'."
    puts "To quit, type \'exit\'."
    puts "What would you like to do?"
    user_input=nil
    user_input= gets.chomp until user_input == "exit"
  end

  def list_songs
    Song.all.each_with_index { |song, index| puts "#{index+1}."}


    expect($stdout).to receive(:puts).with("1. Thundercat - For Love I Come - dance")
    expect($stdout).to receive(:puts).with("2. Real Estate - Green Aisles - country")
    expect($stdout).to receive(:puts).with("3. Real Estate - It's Real - hip-hop")
    expect($stdout).to receive(:puts).with("4. Action Bronson - Larry Csonka - indie")
    expect($stdout).to receive(:puts).with("5. Jurassic 5 - What's Golden - hip-hop")
  end

  def list_artists
  end

  def list_genres
  end

  def list_songs_by_artist
  end

  def list_songs_by_genre
  end

  def play_song
  end


end
