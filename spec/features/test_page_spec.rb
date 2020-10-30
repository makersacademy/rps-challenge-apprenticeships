feature 'Home page' do
  scenario 'User can Register name' do
    visit '/'
    fill_in :player1, with: 'Joe'
    click_button 'Submit'
    expect(page).to have_content "Joe entered the game!"
  end
end
