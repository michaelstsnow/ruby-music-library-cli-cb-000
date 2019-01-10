class Song
  attr_accessor(:name)
  attr_reader(:genre,:artist)
  @@all=[]

  def initialize(name,artist=nil,genre=nil)
    @name=name
    self.artist=artist unless artist == nil
    self.genre=genre unless genre == nil
  end

  def self.destroy_all
    @@all=[]
  end

  def save
    @@all << self
  end

  def self.create(song_name)
    song=Song.new(song_name)
    song.save
    song
  end

  def self.all
    @@all
  end

  def artist=(artist)
    @artist=artist unless artist.nil?
    artist.add_song(self) unless artist.nil?
  end

  def genre=(genre)
    if !genre.nil?
      @genre = genre
      genre.songs << self unless genre.songs.include?(self)
    end
  end



end
