# the marketeers should be able to enter their names before the game
require_relative 'web_helpers'

feature 'players register their names' do
  scenario 'entering names' do
    sign_in
    expect(page).to have_content('Phoebe plays against Ross')
  end
end