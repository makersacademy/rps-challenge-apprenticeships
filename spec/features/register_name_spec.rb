feature "Register player name" do
  scenario "Player fills out the form with their name" do
    register_name_and_play
    expect(page).to have_content("Let's play, Cleo")
  end
end
