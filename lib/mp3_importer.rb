class MP3Importer

  attr_reader :path

  @@all = []

  ############# CLASS METHODS #############
  def self.all
    @@all
  end

  ############# INSTANCE METHODS #############
  def initialize(path)
    @path = path
  end

  def files
    #loads all the mp3 files in the path directory
    #normalizes the filename to just the mp3 filename with no path
    Dir.entries(self.path).select{|file| !File.directory? file}
  end

  def import
    #imports the file into the library by creating songs from a filename
    self.files.each do |file_name|
      Song.new_by_filename(file_name)
    end
  end

end #end of the MP3Importer class

# test1 = MP3Importer.new("./spec/fixtures/mp3s")
# binding.pry
