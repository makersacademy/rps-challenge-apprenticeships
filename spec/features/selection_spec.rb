feature 'playing the game' do
  scenario 'user chooses rock, computer chooses scissors' do
    srand(3)
  visit '/'
  fill_in :player_name, with: 'Jessica'
  click_button 'Submit'
  click_button 'Rock'
  expect(page).to have_content 'You Win!'
end
scenario 'user chooses scissors, computer chooses rock' do
srand(2)
visit '/'
fill_in :player_name, with: 'Jessica'
click_button 'Submit'
click_button 'Scissors'
expect(page).to have_content 'You Lose!'
end

scenario 'user chooses scissors, computer chooses paper' do
  srand(1)
visit '/'
fill_in :player_name, with: 'Jessica'
click_button 'Submit'
click_button 'Scissors'
expect(page).to have_content 'You Win!'
end


scenario 'user chooses paper, computer chooses scissors' do
  srand(3)
visit '/'
fill_in :player_name, with: 'Jessica'
click_button 'Submit'
click_button 'Paper'
expect(page).to have_content 'You Lose!'
end


scenario 'user chooses paper, computer chooses rock' do
  srand(2)
visit '/'
fill_in :player_name, with: 'Jessica'
click_button 'Submit'
click_button 'Paper'
expect(page).to have_content 'You Win!'
end


scenario 'user chooses rock, computer chooses paper' do
  srand(1)
visit '/'
fill_in :player_name, with: 'Jessica'
click_button 'Submit'
click_button 'Rock'
expect(page).to have_content 'You Lose!'
end

scenario 'user and computer chose the same wepaon' do
srand(1)
visit '/'
fill_in :player_name, with: 'Jessica'
click_button 'Submit'
click_button 'Paper'
expect(page).to have_content "It's a tie!"
end
end
