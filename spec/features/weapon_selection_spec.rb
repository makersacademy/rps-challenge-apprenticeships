feature "Weapon selection" do
  scenario "Player can select a weapon" do
    sign_in_and_play
    choose("Paper")
    click_on("Submit")
    expect(page).to have_content("You chose Paper")
  end
end
