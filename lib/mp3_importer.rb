class MP3Importer

  attr_accessor :path

  def initialize(path)
    @path = path
  end

  def files
    file_list = Dir["#{self.path}/*.mp3"]
    file_list.map do |file|
      file[21..-1]
    end
  end

  def import
    files.each do |file|
      Song.new_by_filename(file)
    end
  end

end
