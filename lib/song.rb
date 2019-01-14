class Song

  attr_accessor :name, :artist

  @@all = []

  def self.all
    @@all
  end

  def self.new_by_filename(file_name)
    song_data = file_name.split(" - ")

    new_song = self.new(song_data[1])
    new_song.artist_name = song_data[0]
    new_song.artist.add_song(new_song)
    new_song
  end

  def initialize(name)
    @name = name

  end

  def artist_name=(name)
    self.artist = Artist.find_or_create_by_name(name)
  end

  def save
    @@all << self
  end


end
