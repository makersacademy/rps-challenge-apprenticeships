feature "Enter name" do
  scenario "Player can enter and see their name" do
    sign_in_and_play
    expect(page).to have_content("Welcome, Ian!")
  end
end
