feature 'Enter names' do
  scenario 'submit names' do
    visit('/')
    fill_in :player_name, with: 'Emily'
    click_button 'Submit'
    expect(page).to have_content 'Emily'
  end
end