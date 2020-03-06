feature 'Register name' do
  scenario 'submitting names' do
    visit '/'
    fill_in 'player_name', with: 'Marketer'
    click_button 'start the game'
    expect(page).to have_content 'Hello Marketer and welcome to the Rock, Paper, Scissors game!'
  end
end
