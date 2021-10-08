feature "Decision" do
  scenario "Player chooses rock button" do
    visit ('/names')
    fill_in :player_name, with: "Ana"
    click_button "Start game"
    click_button("Rock")
    expect(page).to have_content "You have picked rock"
  end
end
