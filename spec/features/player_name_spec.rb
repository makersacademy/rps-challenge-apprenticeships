feature 'Enter name' do
  scenario 'submit name' do
    visit('/')
    fill_in :player_name, with: 'Lauren'
    click_button 'Submit'

    save_and_open_page

    expect(page).to have_content 'Lauren, please choose your weapon!'
  end
end