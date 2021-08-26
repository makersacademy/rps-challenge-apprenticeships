feature 'Enter name' do
  scenario 'submitting name' do
    visit('/')
    fill_in :player_1_name, with: 'Jack'
    click_button 'Submit'
    
    expect(page).to have_content 'Jack'
  end
end