describe "index page", type: :feature do
  it "welcomes the user" do
    visit '/'
    expect(page).to have_content('Welcome!')
  end

  it "lets the user enter their name, then takes them to the game page which displays that name" do
    enter_name
    expect(page).to have_content('Bob')
  end
end
