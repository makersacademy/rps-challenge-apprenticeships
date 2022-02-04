feature 'welcome page' do
  scenario 'user visits welcome page' do
    visit '/welcome'
    expect(page).to have_content('Welcome to the MAMA game room')
  end
end
