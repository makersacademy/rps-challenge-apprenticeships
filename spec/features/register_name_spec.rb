feature 'Register User Name' do
  scenario 'a user can enter their name and it is shown' do
    visit '/'
    fill_in 'user_name', with: 'Patrick'
    click_button 'Register'
    expect(page).to have_content('Hi Patrick!')
  end
end
