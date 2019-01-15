class Song
  attr_accessor :artist, :name

  @@all = []

  ############# CLASS METHODS #############
  def self.all
    @@all
  end

  def self.new_by_filename(file)
    new_song = Song.new(file.split(" - ")[1])
    new_song.artist = Artist.find_or_create_by_name(file.split(" - ")[0])
    new_song
  end

  ############# INSTANCE METHODS #############
  def initialize(name)
    @name = name

    @@all << self
  end

end #end of Song class

# binding.pry
