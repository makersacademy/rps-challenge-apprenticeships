require_relative './web_helpers'

feature 'Getting the game set up' do
  scenario 'See your name on the game page' do
    sign_in_and_play
    expect(page).to have_content "Hi Marketeer!\nLet us play a game of Rock, Paper, Scissors."
    find_button('Start Game').click
  end
end
