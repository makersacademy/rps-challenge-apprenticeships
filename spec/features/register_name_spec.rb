feature 'register name' do
  scenario "Registers the players name before playing" do
    visit('/')
    fill_in :player1_name, with: "Hector"
    click_button "submit"
    expect(page).to have_content "Welcome Hector"
  end
end
