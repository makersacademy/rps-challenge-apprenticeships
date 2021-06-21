def sign_in_and_play
  visit ('/names')
    fill_in 'human_player', with: 'Marketeer'
    click_button 'Sign into the game!'
end