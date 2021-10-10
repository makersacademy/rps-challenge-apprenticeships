feature "Play Rock, Paper, Scissors" do
  scenario "The player has 3 buttons to choose from" do
    register_name_and_play
    expect(page).to have_button("Rock")
  end
end
