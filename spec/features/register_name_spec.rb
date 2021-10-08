feature 'Register name' do
  scenario 'submit name' do
    visit('/')
    fill_in :player_name, with: 'John'
    click_button 'Register'
    expect(page).to have_content 'Ready to play John?'
  end
end