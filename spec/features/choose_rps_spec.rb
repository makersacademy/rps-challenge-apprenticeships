feature "choose game option" do
  scenario "allows the player to choose rock paper or scissors and see on screen" do
    visit "/play"
    # fill_in("selection", with: "Rock")
    choose id = "Rock"
    click_button ["Submit"]
    expect(page).to have_content "You chose: Rock"
  end
end
