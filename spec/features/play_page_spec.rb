feature "Play Rock, Paper, Scissors" do
  scenario "The player has 3 buttons to choose from" do
    register_name_and_play
    expect(page).to have_button("Rock")
  end

  scenario "The player chooses rock and receives confirmation of choice" do
    register_name_and_play
    click_button("Rock")
    expect(page).to have_content("Cleo chose Rock")
  end
end
