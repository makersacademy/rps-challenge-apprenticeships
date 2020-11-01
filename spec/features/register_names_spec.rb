
feature 'Register names' do
  scenario 'name registered before playing' do
    visit('/')
    fill_in :player_1_name, with: 'Jake'
    click_button 'Register'
    expect(page).to have_content 'Jake the marketeer'
  end
end

feature 'Playing a game of RPS' do
  scenario 'Move choices are displayed as buttons' do
  visit('/play')
  click_button 'Rock'
  click_button 'Paper'
  click_button 'Scissors'
  expect(page).to have_content 'Rock'
  expect(page).to have_content 'Paper'
  expect(page).to have_content 'Scissors'
  end
end
