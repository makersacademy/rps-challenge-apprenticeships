feature 'welcome page' do
  scenario 'user visits welcome page' do
    visit('/')   
    expect(page).to have_content('Please enter your player name:')
  end

  scenario 'user submits name' do
    visit('/')
      fill_in('name', with:'Lynsey')
      click_button('Click to play')
    expect(page).to have_content('Welcome to the MAMA game room Lynsey')
  end
end
