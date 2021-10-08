feature "choose game option" do
  scenario "allows the player to choose rock paper or scissors" do
    visit "/play"
    expect(page).to have_field "selection"
  end

  scenario "allows the player to choose one option and see on screen" do
    visit "/play"
    choose id = "Rock"
    click_button ["Submit"]
    expect(page).to have_content "You chose: Rock"
  end
end
