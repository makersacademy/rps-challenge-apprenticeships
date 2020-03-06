feature "play game" do
  scenario "choose rock, paper or scissors" do
    visit('/')
    fill_in :player_name, with: "Jo"
    click_button "Submit"
    choose "Rock"
    click_button "Submit"
    expect(player_choice).to eq("rock")
  end
end
