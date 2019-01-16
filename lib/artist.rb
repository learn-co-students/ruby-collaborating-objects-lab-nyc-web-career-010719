class Artist

  attr_accessor :name, :artist, :songs
  @@all = []

  def initialize(name)
    @name = name
    @artist = artist
    @songs = []
    # @@all << self
  end

  def self.all
    @@all
  end

  def add_song(song)
    self.songs << song
  end

  def save
    @@all << self
  end

  def self.find(name)
    self.all.find{|name_artist| name_artist.name == name}
  end

  def self.create(name)
    # self.create(artist: name[:artist])
    self.new(name).tap{|artist| artist.save}
  end

  def self.find_or_create_by_name(name)
    self.find(name) ? self.find(name) : self.create(name)
  end

  def print_songs
    songs.each{|song| puts song.name}
  end
end
