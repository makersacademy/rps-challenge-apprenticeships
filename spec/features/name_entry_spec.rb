feature "enter player name" do
  scenario "user enters a player name" do
    sign_in_and_play
    expect(page).to have_content("Steve VS Computer")
  end
end
