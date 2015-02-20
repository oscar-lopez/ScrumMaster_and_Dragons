Given(/^inicio del juego$/) do
  visit '/'
end
Then(/^deberia ver el "(.*?)" del juego$/) do |text|
  last_response.body.should =~ /#{text}/m
end

Then(/^deberia ver "(.*?)" del juego$/) do |text|
  last_response.body.should =~ /#{text}/m
end

Then(/^deberia ver un link para "(.*?)"$/) do |text|
  last_response.body.should =~ /#{text}/m
end