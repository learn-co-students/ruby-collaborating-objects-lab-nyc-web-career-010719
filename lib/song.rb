class Song
  attr_accessor :name, :artist

  def initialize(name)
    @name = name
  end

  # def artist_name=(name)
  #
  # end

  def self.new_by_filename(filename)
    artist, song = filename.split(" - ")
    new_file = self.new(song)
    new_file.artist_name = artist
    new_file
  end

  def artist_name=(name) # can't call it artist=, infinite loop
    self.artist = Artist.find_or_create_by_name(name)
    artist.add_song(self)
  end

end
