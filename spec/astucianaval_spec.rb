#encoding: utf-8
require './lib/astucianaval'

describe AstuciaNaval do
	before(:each) do
		@juego = AstuciaNaval.new
	end

	describe "Posicionamiento"
		it "debe poder permitir definit la coordenada de posicionamiento del barco" do
			@juego.posicionar "A1"
			@juego.posicion.should == "A1"
		end
	end
end
