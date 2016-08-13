#encoding: utf-8
require './lib/astucianaval'

describe AstuciaNaval do
	before(:each) do
		@juego = AstuciaNaval.new
	end

	it "debe poder permitir el posicionamiento del barco" do
		@juego.posicionar "A1"
		@juego.posicion.should == "A1"
	end
end
