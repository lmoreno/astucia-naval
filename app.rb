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
    puts "Atacar coordenada #{coordenada}"
    impacto = session['juego'].realizar_ataque coordenada
    puts "Impacto: #{impacto}"
    redirect("/resultado?impacto=#{impacto}")
  end
end

get '/resultado' do
  erb :resultado
end
