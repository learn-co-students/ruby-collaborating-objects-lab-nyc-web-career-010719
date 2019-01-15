require 'pry'
require_relative './artist'
require_relative './song'
require_relative './mp3_importer'


s1 = Song.new("Hello")
s2 = Song.new("Someone Like You")
s3 = Song.new("Delicate")

a1 = Artist.new("Adele")


Song.new_by_filename("Taylor Swift - Delicate - pop.mp3")


binding.pry

puts "bye!"
