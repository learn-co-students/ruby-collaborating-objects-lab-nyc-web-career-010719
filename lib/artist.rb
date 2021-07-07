require "pry"

class Artist

  attr_accessor :name, :songs

  @@all = []

  def self.all
    @@all
  end

  def self.find_or_create_by_name(name)
    matching = @@all.find do |artist|
      artist.name == name
    end

    if matching
      return matching
    else
      Artist.new(name)
    end
  end

  def initialize(name)
    @name = name
    @songs = []

    @@all << self
  end

  def save
    @@all << self
  end

  def add_song(song)
    if self.songs.include?(song)
      return self.songs
    else
      @songs << song
    end
  end

  def print_songs
    @songs.each do |song|
      puts song.name
    end
  end


end
