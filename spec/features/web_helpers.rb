def sign_in_and_play
  visit('/')
  fill_in :player_1_name, with: 'Tommy'
  click_button 'Play'
end

def sign_in_play_and_choose_rock
  visit('/')
  fill_in :player_1_name, with: 'Tommy'
  click_button 'Play'
  page.choose(option: 'Rock')
  click_button 'Play'
end