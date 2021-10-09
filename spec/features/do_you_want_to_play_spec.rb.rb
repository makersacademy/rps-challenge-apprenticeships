feature 'Player is asked if they want to play game'
  scenario 'Player can click start button to start game'
  visit ('/name')
  page.click_button('Start Game')
end