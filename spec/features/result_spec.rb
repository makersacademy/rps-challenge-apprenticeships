# a winner will be declared
require_relative 'web_helpers'

feature 'want to see the result' do

  scenario 'it is a draw' do
      sign_in
      draw
      expect(page).to have_content "it's a draw"
  end

  scenario 'player 1 wins' do
      sign_in
      winner_1
      expect(page).to have_content 'Phoebe WON!!'
  end

  scenario 'player 2 wins' do
      sign_in
      winner_2
      expect(page).to have_content 'Ross WON!!'
  end
end