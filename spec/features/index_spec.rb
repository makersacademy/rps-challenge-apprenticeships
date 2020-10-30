describe "index page", type: :feature do
  it "welcomes the user" do
    visit '/'
    expect(page).to have_content('Welcome!')
  end
  context "single player" do
    it "lets the user enter their name, then takes them to the game page which displays that name" do
      enter_name
      expect(page).to have_content('Bob')
    end
  end

  context "two player" do
    it "reloads with the two player form when clicking two player button" do
      visit '/'
      click_button('Play 2 Player')
      expect(page).to have_content('Player 2 Name')
    end

    it "takes us to the game page with both players names displayed when filling in the two player form" do
      enter_names
      expect(page).to have_content('Bill')
    end
  end
end
