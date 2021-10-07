require 'game'

feature 'game page' do
  scenario 'user wins' do
    # stub to ensure consistency of random method in testing
    allow_any_instance_of(Game).to receive(:computer_choice).and_return("Scissors")
    
    user_starts_game
    select "Rock", from: "choice"
    click_button "Go!"

    expect(page).to have_content "You entered: Rock"
    expect(page).to have_content("Computer entered: Scissors")
    expect(page).to have_content "Player wins!"
  end

  scenario 'computer wins' do
    # stub to ensure consistency of random method in testing
    allow_any_instance_of(Game).to receive(:computer_choice).and_return("Scissors")
    
    user_starts_game
    select "Paper", from: "choice"
    click_button "Go!"

    expect(page).to have_content "You entered: Paper"
    expect(page).to have_content("Computer entered: Scissors")
    expect(page).to have_content "Computer wins!"
  end

  scenario 'draw' do
    # stub to ensure consistency of random method in testing
    allow_any_instance_of(Game).to receive(:computer_choice).and_return("Scissors")
    
    user_starts_game
    select "Scissors", from: "choice"
    click_button "Go!"

    expect(page).to have_content "You entered: Scissors"
    expect(page).to have_content("Computer entered: Scissors")
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
