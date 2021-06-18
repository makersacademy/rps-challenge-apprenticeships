def sign_in_and_play
  visit ('/names')
    name = 'name'
    fill_in 'human_player', with: name
    click_button 'Play!'
end