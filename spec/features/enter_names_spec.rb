feature 'Sign in' do
  scenario 'Enter your name' do
    visit('/')
    fill_in :player_name, with: 'Pilly'
    click_button 'Enter your name'
     expect(page).to have_content "Hello Pilly, choose your bet:"

  end
end