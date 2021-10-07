require 'game'

feature 'game page' do
  scenario 'user loses' do
    # stub to ensure consistency of random method in testing
    allow_any_instance_of(Game).to receive(:computer_choice).and_return("Scissors")
    
    user_starts_game
    select "Rock", from: "choice"
    click_button "Go!"

    expect(page).to have_content "You entered: Rock"
    expect(page).to have_content("Computer entered: Scissors")
    expect(page).to have_content "Computer wins!"
  end
end
