# As a marketeer
# So that I can see my name in lights
# I would like to register my name before playing an online game

feature "Player name" do
  scenario "Player enters their name and it is displayed" do
    visit('/')
    fill_in :name, with: 'Bhups'
    click_button 'Submit'
    expect(page).to have_content 'Bhups'
  end
end
