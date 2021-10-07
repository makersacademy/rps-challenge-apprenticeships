require 'game'

feature 'game page' do
  scenario 'user wins' do
    run_game('Rock')
    expect(page).to have_content "Player wins!"
  end

  scenario 'computer wins' do
    run_game('Paper')
    expect(page).to have_content "Computer wins!"
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
    expect(page).to have_content "Enter your name"
  end
end
