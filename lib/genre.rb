class Genre
  attr_accessor(:name)
  @@all=[]

  def initialize(name)
    @name=name
    @songs=[]
  end

  def self.destroy_all
    @@all=[]
  end

  def save
    @@all << self
  end

  def self.create(genre_name)
    genre=Genre.new(genre_name)
    genre.save
    genre
  end

  def self.all
    @@all
  end

  def songs
    @songs
  end



end
