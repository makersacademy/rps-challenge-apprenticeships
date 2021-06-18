feature 'Sign in' do
  scenario 'user enters name and it displays on page' do
    visit('/')
    fill_in :name, with: 'Hannah'
    click_button('Submit')
    expect(page).to have_content('Hannah')
  end
end