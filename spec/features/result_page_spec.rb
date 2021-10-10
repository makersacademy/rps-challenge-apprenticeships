feature "the results page" do
  scenario "the computer's choice is displayed" do
    allow_any_instance_of(Computer).to receive(:generate_choice).and_return "Scissors"
    visit "/result"
    expect(page).to have_content "The Computer chose: Scissors"
  end

  scenario "the player wins and confirmation is displayed" do
    allow_any_instance_of(Computer).to receive(:generate_choice).and_return "Paper"
    make_player_choice
    expect(page).to have_content "You won!"
  end

  scenario "the computer wins and confirmation is displayed" do
    allow_any_instance_of(Computer).to receive(:generate_choice).and_return "Rock"
    make_player_choice
    expect(page).to have_content "The computer won!"
  end

  scenario "it's a draw" do
    allow_any_instance_of(Computer).to receive(:generate_choice).and_return "Scissors"
    make_player_choice
    expect(page).to have_content "It's a draw!"
  end

  scenario "replay" do
    make_player_choice
    click_button "Play again!"
    expect(page).to have_content "Make your choice!"
  end
end
