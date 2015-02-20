require 'sinatra'

get '/' do
	erb :home
end

get '/juego' do
	erb :juego
end

