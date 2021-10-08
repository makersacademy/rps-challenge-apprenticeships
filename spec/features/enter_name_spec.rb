feature 'Enter name: ' do
  scenario 'a player can enter their name' do
    visit('/')
    fill_in :player_name, with: 'Beth'
    click_button 'Register my name'
    save_and_open_page
    expect(page).to have_content 'Hello, Beth!'
  end
end
