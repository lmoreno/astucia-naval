require 'sinatra'

get '/' do
  erb :home
end

get '/tablero' do
  erb :tablero
end

get '/atacar' do
  erb :atacar
end
