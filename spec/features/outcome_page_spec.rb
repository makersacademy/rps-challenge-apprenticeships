feature "Rock, Paper Scissors results" do
  before do
    register_name_and_play
  end

  scenario "Player chooses rock and turn is displayed" do
    click_button "Rock"
    expect(page).to have_content("Cleo chose Rock")
  end

  scenario "Computer chooses rock and turn is dislayed" do
    allow_any_instance_of(Computer).to receive(:random_turn).and_return("Rock")
    visit "/outcome"
    expect(page).to have_content("The computer chose Rock")
  end

  scenario "Player wins the game with paper" do
    allow_any_instance_of(Computer).to receive(:random_turn).and_return("Rock")
    click_button "Paper"
    expect(page).to have_content("You win!")
  end

  scenario "Computer wins the game with rock" do
    allow_any_instance_of(Computer).to receive(:random_turn).and_return("Rock")
    click_button "Scissors"
    expect(page).to have_content("Computer wins!")
  end

  scenario "Game ends in a draw" do
    allow_any_instance_of(Computer).to receive(:random_turn).and_return("Rock")
    click_button "Rock"
    expect(page).to have_content("It's a draw!")
  end
end
