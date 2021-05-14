feature 'Testing infrastructure' do
  scenario 'Can run app and check page content' do
    visit('/')
    expect(page).to have_content 'Lets Play Rock, Paper, Scissors!'
  end
end

# As a marketeer
# So that I can see my name in lights
# I would like to register my name before playing an online game

feature 'Register player name' do
  scenario 'Player submits name and then sees name on screen' do
    sign_in_and_play
    expect(page).to have_content 'Welcome Liam, get ready to play!'
  end
end

feature 'Play again' do
  scenario 'after a game, the player can play again' do
    sign_in_and_play
    click_button 'Rock'
    click_button 'Play Again'
    expect(page).to have_content 'Welcome Liam, get ready to play!'
  end
end
