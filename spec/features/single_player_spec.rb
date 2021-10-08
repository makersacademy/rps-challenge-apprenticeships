require 'game'

feature 'single player home page' do
  scenario 'should ask user to enter their name' do
    visit '/single_player'
    expect(page).to have_content('Enter your name:')
  end

  scenario 'user enters their name and is taken to /single_player_game' do
    user_starts_game
    expect(page).to have_content('Enter your choice, Foo:')
  end
end

feature 'game page' do
  scenario 'user wins' do
    run_game('Rock')
    expect(page).to have_content "Player wins!"
  end

  scenario 'computer wins' do
    run_game('Paper')
    expect(page).to have_content "Computer wins"
  end

  scenario 'draw' do
    run_game('Scissors')
    expect(page).to have_content "It's a draw!"
  end

  scenario 'lets the user play again' do
    run_game('Scissors')
    
    click_button "Play again!"
    expect(page).to have_content "Enter your choice"
  end

  scenario 'lets the user exit' do
    run_game('Scissors')
    click_button "Exit"
    expect(page).to have_content "Rock, Paper, Scissors!"
  end
end

