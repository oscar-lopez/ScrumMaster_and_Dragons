require 'sinatra'

get '/' do
	erb :home
end

get '/juego' do
	erb :juego
end
get '/actualizar' do
	erb :actualizar
end



