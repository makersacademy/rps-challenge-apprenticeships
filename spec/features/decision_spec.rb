feature "Decision" do
  scenario "Player chooses rock button" do
    visit ('/names')
    fill_in :player_name, with: "Ana"
    click_button "Start game"
    click_button("Rock")
    save_and_open_page
    expect(page).to have_content "You have picked rock"
  end
  scenario "Player chooses paper button" do
    visit ('/names')
    fill_in :player_name, with: "Ana"
    click_button "Start game"
    click_button("Paper")
    expect(page).to have_content "You have picked paper"
  end
  scenario "Player chooses scissors button" do
    visit ('/names')
    fill_in :player_name, with: "Ana"
    click_button "Start game"
    click_button("Scissors")
    expect(page).to have_content "You have picked scissors"
  end
end
