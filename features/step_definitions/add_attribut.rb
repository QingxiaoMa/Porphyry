require 'capybara/cucumber'
require 'capybara/cuprite'

Capybara.run_server = false
Capybara.default_driver = :selenium_chrome_headless
Capybara.app_host = "http://localhost:3000"
Capybara.default_max_wait_time = 10

# Conditions
Soit("l'item {string} rattaché au portofolio {string}") do |item, portofolio|
  #On the remote servers
end

Soit("le titre de l'item affiché est {string}") do |string|
  expect(page).to have_content(titre)
end

Quand("on clique sur le bouton {string}") do |bouton|
  click_button(bouton)
end

Quand("on saisit le nom de l{string}attribut {string}") do |attribut, valeur|
  fill_in('key', with: attribut)
  fill_in('value', with: valeur)
end

Alors("la valeur de l'attribut {string} est {string}") do |attribute, value|
  expect(page).to have_content(value)
  expect(page).to have_content(attribute)
end
