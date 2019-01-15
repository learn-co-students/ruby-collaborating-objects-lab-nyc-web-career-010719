class Artist
  attr_accessor :name

  @@all = []

  ############# CLASS METHODS #############
  def self.all
    @@all
  end

  def self.find_or_create_by_name(artist_name)
    #finds or creates an artist by name maintaining uniqueness of objects by name property
    # if self.all.find{|artists| artists.name == artist_name}
    #   return artists
    # else
    #   artist_name = Artist.new(artist_name)
    # end
    artist_var = Artist.all.find do |artist|
      artist.name == artist_name
    end

    if artist_var == nil
      artist_var = Artist.new(artist_name)
    else
      return artist_var
    end
  end

  ############# INSTANCE METHODS #############
  def initialize(name)
    @name = name

    @@all << self
  end

  def songs
    Song.all.select do |song|
      song.artist == self
    end
  end

  def add_song(song)
    #keeps track of an artist's songs
    new_song = Song.new(song)
    song.artist = self
  end

  def save
    #adds the artist instance to the @@all class variable
    @@all << self
  end

  def print_songs
    #lists all of the artists songs
    self.songs.each do |song|
      puts song.name
    end
  end


end #end of Artist class
