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

Given(/^el usuario hace click "(.*?)"$/) do |name|
  visit '/juego'
end

Then(/^deberia ver el boton "(.*?)"$/) do |arg1|
  click_button("enviar")
end
Then(/^deberia ver "(.*?)"$/) do |text|
  last_response.body.should =~ /#{text}/m
end

Given(/^el usuario click "(.*?)"$/) do |arg1|
  visit '/actualizar'
end

Then(/^deberia aparecer respuesta en "(.*?)" el resultado$/) do |text|
  last_response.body.should =~ /#{text}/m
end

