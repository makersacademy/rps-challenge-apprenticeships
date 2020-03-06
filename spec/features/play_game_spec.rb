feature "player enters choice" do
  scenario "choose rock, paper or scissors" do
    visit('/')
    fill_in :player_name, with: "Jo"
    click_button "Submit"
    choose "Rock"
    click_button "Submit"
    expect(player_choice).to eq("rock")
  end
end

feature "computer makes a choice" do
  scenario "computer generates choice" do
    expect(computer_choice).to have_content("rock") or have_content("paper") or have_content("scissors")
  end
end
