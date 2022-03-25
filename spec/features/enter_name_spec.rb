feature "Enter name" do
  scenario "Player can enter and see their name" do
    visit "/"
    fill_in(:player_name, with: "Ian")
    click_button("Submit")
    expect(page).to have_content("Welcome, Ian!")
  end
end
