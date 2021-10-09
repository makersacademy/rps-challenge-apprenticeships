feature 'Player can enter name' do
  scenario 'Player can enter name and see it on screen' do
    visit('/')
    page.fill_in("player_name", with: 'Kirsty')
    page.click_button('Start')
    expect(page).to have_current_path('/name')
    expect(page).to have_selector('#player_name', text: 'Kirsty')
  end

 
