require 'sinatra'
require './lib/astucianaval'

enable :sessions

get '/' do
  session.delete 'juego'
  session.delete 'coordenada_barco'
  erb :home
end

get '/tablero' do
  session.delete 'juego'
  session.delete 'coordenada_barco'
  erb :tablero
end

get '/posicionar/?:coordenada' do
  juego = AstuciaNaval.new
  juego.posicionar params[:coordenada]
  session['juego'] = juego
  session['coordenada_barco'] = juego.posicion
  erb :tablero
end

get '/atacar/?:coordenada?' do
  coordenada = params[:coordenada]
  if coordenada == nil
    erb :atacar
  else
    session['juego'].realizar_ataque coordenada
    redirect '/resultado'
  end
end

get '/resultado' do
  erb :resultado, :locals => {:impacto => session['juego'].impacto}
end
