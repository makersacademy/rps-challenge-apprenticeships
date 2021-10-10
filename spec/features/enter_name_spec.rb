feature 'Player enters name' do
  scenario 'player fills in form with name and clicks submit' do
    visit('/')
    fill_in :player_1_name, with: 'Tommy'
    click_button 'Play'
    expect(page).to have_content 'Tommy vs. Computer'
  end
end