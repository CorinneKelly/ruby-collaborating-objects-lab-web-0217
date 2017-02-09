require 'pry'

class MP3Importer
	attr_accessor :path

	def initialize(file_path)
		@path = file_path
	end

	def files	
		@files = Dir.entries(@path)[2..-1]
	end

	def import
		# binding.pry
		self.files.each do |file_name|
			 song = Song.new_by_filename(file_name)
			 # song.save
		end
	end
end