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
    allow_any_instance_of(Game).to receive(:computer_choice).and_return("Scissors")
    
    user_starts_game
    select "Scissors", from: "choice"
    click_button "Go!"
    
    click_button "Play again!"
    expect(page).to have_content "Enter your choice"
  end
end
