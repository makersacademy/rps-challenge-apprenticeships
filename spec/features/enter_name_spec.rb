feature 'Enter name' do
  scenario 'submitting name' do
    visit('/')
    fill_in :player_name, with: 'Charlotte'
    click_button 'Submit'
    save_and_open_page
    
    expect(page).to have_content 'Make your choice Charlotte'
  end
end