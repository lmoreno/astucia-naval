Given(/^que abri la aplicacion$/) do
  visit "/"
end

Then(/^debo ver "(.*?)"$/) do |text|
  last_response.body.should =~ /#{text}/m
end
