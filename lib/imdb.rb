require 'imdb'

class IMDBMovieCatalog
	attr_reader :search, :movie_titles
		def search(title)
		search = Imdb::Search.new(title)
	end
end

