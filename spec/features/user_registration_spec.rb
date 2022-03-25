feature 'User registration' do
  scenario 'user enters name' do
    visit('/')
    fill_in :user_name, with: 'Bella'
    click_button 'Submit'
    expect(page).to have_content 'Bella'
  end
end
