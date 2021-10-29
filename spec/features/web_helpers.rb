def sign_in_and_play
  visit('/')
  fill_in :player_name, with: 'Scott'
  click_button 'Submit'
end

def sign_in_and_choose_rock
  visit('/')
  fill_in :player_name, with: 'Scott'
  click_button 'Submit'
  click_button 'Rock'
end

def sign_in_and_choose_paper
  visit('/')
  fill_in :player_name, with: 'Scott'
  click_button 'Submit'
  click_button 'Paper'
end

def sign_in_and_choose_scissors
  visit('/')
  fill_in :player_name, with: 'Scott'
  click_button 'Submit'
  click_button 'Scissors'
end