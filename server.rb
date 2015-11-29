require 'sinatra'
require 'sinatra/reloader'
require 'pry'
require_relative './lib/imdb.rb'

catalog = IMDBMovieCatalog.new

get '/index' do 
	erb :index
end

post '/return_movies' do
	@search = catalog.search(params[:theme])
	erb :show_movies
end

