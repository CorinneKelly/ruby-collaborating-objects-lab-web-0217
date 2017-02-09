class Artist
	attr_accessor :name, :songs

	@@all = []

	def initialize(name)
		@name = name
		@songs = []
	end

	def add_song(song)
		@songs << song
	end

	def self.all
		@@all
	end

	def save
		unless @@all.include?(self)
			@@all << self
		end
	end
	
	def self.find_or_create_by_name(artist_name)
		artist = @@all.detect {|artist| artist.name == artist_name}

		if artist.nil?
			artist = self.new(artist_name)
		end
		
		artist.save
		artist
	end

	def print_songs
		@songs.map {|song| puts song.name}
	end

end