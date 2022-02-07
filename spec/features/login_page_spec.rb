feature 'Login page' do
  scenario 'visit login page' do
    visit '/'
    expect(page).to have_content('Login')
  end
end
