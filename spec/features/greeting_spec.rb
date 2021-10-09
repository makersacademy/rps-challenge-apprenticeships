require "./app"

feature "game greeting" do
  scenario "the home page welcomes the user with a greeting" do
    visit "/"
    expect(page).to have_content("Challenge time!")
  end
end
