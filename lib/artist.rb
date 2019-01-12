require 'pry'

class Artist
  attr_accessor :name, :songs
  @@all = []

  def self.all
    @@all
  end

  def initialize(name)
    @name = name
    @songs = []
  end

  def add_song(song_obj)
    self.songs << song_obj
  end

  def save
    @@all << self
  end

  def self.find_or_create_by_name(name)
    if self.all.find { |artist| artist.name == name }
      self.all.find { |artists| artists.name == name }
    else
      new_artist = Artist.new(name)
      new_artist.save
      new_artist
    end
  end

  def print_songs
    self.songs.map {|songs| puts songs.name}
  end
end

#binding.pry
