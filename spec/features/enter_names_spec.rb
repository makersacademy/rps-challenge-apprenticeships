feature 'Sign in' do
  scenario 'Player enter name' do
    visit('/')
    fill_in :player_name, with: 'Pilly'
    click_button 'Start Game!'
     expect(page).to have_content "Hello Pilly, choose your bet:"

  end
end