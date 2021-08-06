feature 'Home page runs' do
  scenario 'visit home page' do
    visit '/'
    expect(page).to have_content('Please enter your name!')
  end
end
