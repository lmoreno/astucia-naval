require 'sinatra'

get '/' do
  "Bienvenido \n Astucia Naval"
end

get '/tablero' do
  erb :tablero
end
