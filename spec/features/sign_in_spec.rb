feature 'Sign in' do
  scenario 'user enters name and it displays on page' do
    sign_in
    expect(page).to have_content('Hannah')
  end
end
