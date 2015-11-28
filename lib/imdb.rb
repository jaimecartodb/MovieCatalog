require 'imdb'

class IMDBMovieCatalog
	attr_reader :search, :movie_titles
		def search(title)
		search = Imdb::Seach.new(title)
		movie_titles= search.movies.map {|movie| movie.title}
	end
end