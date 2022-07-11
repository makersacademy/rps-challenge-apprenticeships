feature 'Choose rock weapon' do
  scenario 'clicking on rock button' do
    visit('/submit-name')
    fill_in :player_1_name, with: 'Bob'
    click_button 'Submit'
    click_button 'ROCK'
    expect(page).to have_content 'rock'
  end
end