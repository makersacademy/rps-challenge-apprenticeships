feature 'Register User Name' do
  scenario 'a user can enter their name and it is shown' do
    sign_in
    expect(page).to have_content('Hi Patrick!')
  end
end
