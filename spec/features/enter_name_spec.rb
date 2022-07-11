feature 'Enter names' do
  scenario 'submitting name' do
    visit('/')
    fill_in :player_name, with: 'Bob'
    click_button 'Submit'
    expect(page).to have_content 'Bob'
  end
end