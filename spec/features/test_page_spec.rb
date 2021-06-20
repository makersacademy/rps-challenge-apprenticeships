feature "entering name" do
  scenario "visit start game page" do
    visit "/"
    expect(page).to have_content("Sing in to play!")
  end
end
