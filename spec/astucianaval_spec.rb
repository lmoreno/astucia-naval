#encoding: utf-8
require './lib/astucianaval'

describe AstuciaNaval do
	before(:each) do
		@juego = AstuciaNaval.new
	end

	describe "Posicionamiento" do
		it "debe poder permitir  definit la coordenada de posicionamiento del barco" do
			@juego.posicionar "A1"
			@juego.posicion.should == "A1"
		end
	end

	describe "Atacar" do
		it "debo saber cuando se impacta la posición del barco" do
			@juego.posicionar "A1"
			resultado = @juego.realizar_ataque "A1"

			resultado.should == true
		end

		it "debo saber cuando se impacta una posición sin barco" do
			@juego.posicionar "A1"
			resultado = @juego.realizar_ataque "B2"

			resultado.should == false
		end
	end

end
