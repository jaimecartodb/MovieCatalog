require 'sinatra'
require 'sinatra/reloader'
require_relative './lib/imdb.rb'

get '/index' do 
	erb :index
end

post 'return_movies/search' do
	catalog = ImdbMovieCatalog.new
	catalog.search(params[:search])
	erb :show_movies
end

