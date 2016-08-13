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
		it "debo saber si una coordenada ha sido impactada" do
			resultado = @juego.atacar_casilla "B2"
			resultado.should == false

		end
	end

end
