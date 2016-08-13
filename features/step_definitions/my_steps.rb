Given(/^que abri la aplicacion$/) do
  visit "/"
end

Then(/^debo ver "(.*?)"$/) do |text|
  last_response.body.should =~ /#{text}/m
end

Given(/^ingresamos al juego$/) do
  visit '/tablero'
end

Then(/^debo ver un tablero de tres por tres$/) do
  last_response.should have_xpath( "//td[@id=\"A1\"]")
  last_response.should have_xpath( "//td[@id=\"A2\"]")
  last_response.should have_xpath( "//td[@id=\"A3\"]")
  last_response.should have_xpath( "//td[@id=\"B1\"]")
  last_response.should have_xpath( "//td[@id=\"B2\"]")
  last_response.should have_xpath( "//td[@id=\"B3\"]")
  last_response.should have_xpath( "//td[@id=\"C1\"]")
  last_response.should have_xpath( "//td[@id=\"C2\"]")
  last_response.should have_xpath( "//td[@id=\"C3\"]")
end

When(/^hago click en boton "(.*?)"$/) do |name|
  click_button(name)
end

Then(/^debo ver pantalla de tablero$/) do

end

Then(/^debo ver las coordenadas del tablero$/) do
  last_response.should have_xpath( "//th[@id=\"A\"]") do |th|
    th.should contain( 'A' )
  end
  last_response.should have_xpath( "//th[@id=\"B\"]") do |th|
    th.should contain( 'B' )
  end
  last_response.should have_xpath( "//th[@id=\"C\"]") do |th|
    th.should contain( 'C' )
  end
  last_response.should have_xpath( "//th[@id=\"1\"]") do |th|
    th.should contain( '1' )
  end
  last_response.should have_xpath( "//th[@id=\"2\"]") do |th|
    th.should contain( '2' )
  end
  last_response.should have_xpath( "//th[@id=\"3\"]") do |th|
    th.should contain( '3' )
  end
end

Given(/^ingresamos al tablero$/) do
  visit '/tablero'
end

Then(/^debo poder ver el mensaje "([^"]*)"$/) do |text|
  last_response.body.should =~ /#{text}/m
end

Then(/^debo poder dar click en la coordenada "([^"]*)" para posicionar el barco$/) do |coordenada|
  click_link(coordenada)
end

Given(/^estoy en la pagina de atacar$/) do
  visit "/atacar"
end

Then(/^debo ver la casilla en posicion "(.*?)" de color "(.*?)"$/) do |arg1, arg2|
  pending # express the regexp above with the code you wish you had
end
