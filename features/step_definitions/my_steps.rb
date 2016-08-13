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
