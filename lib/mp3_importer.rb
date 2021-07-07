class MP3Importer

  attr_accessor :path
  @@all = []

  def initialize(path)
    @path = path
    @@all << self
  end

  def files
    # Dir lets you peer into file directories
    @files ||= Dir.glob("#{path}/*.mp3").collect{ |file| file.gsub "#{path}/", ""}
  end

  def import
    files.each {|file| Song.new_by_filename(file)}
  end

end
