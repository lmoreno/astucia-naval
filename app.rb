require 'sinatra'
require './lib/astucianaval'

enable :sessions

get '/' do
  erb :home
end

get '/tablero' do
  juego = AstuciaNaval.new
  juego.posicionar params['posicionar']
  session['juego'] = juego
  session['coordenada_barco'] = params['posicionar']
  erb :tablero
end

get '/atacar' do
  coordenada = params["coordenada"]
  if coordenada == nil
    erb :atacar
  else
    juego = AstuciaNaval.new
    session['resultado'] = juego.atacar_casilla coordenada
    erb :resultado
  end
end

get '/resultado' do
  if params['resultado'] == "win"
    session['result_image'] = "http://ci.memecdn.com/11/9827011.jpg"
  else
    session['result_image'] = "http://3.bp.blogspot.com/-lse4doyKXDg/T3m3j-D71dI/AAAAAAAAALA/FOSZygcq1fY/s1600/Ryu-Bison+Lose.jpg"
  end
  erb :resultado
end
