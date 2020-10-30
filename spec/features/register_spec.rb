feature "Enter a name" do
  scenario "register players name" do
    register_and_play
    expect(page).to have_content "Player's name: Dave"
  end
end
