def sign_up_and_play
  visit '/'
  fill_in :name, with: 'Super Mario'
  click_button 'Start Game'
end