def select_single_player
  visit '/'
  choose("mode", option: "single_player")
  click_button('Play Now!')
  fill_in('player_one', with: 'Player 1')
  click_button('Begin Play!')
end

def select_multiplayer
  visit '/'
  choose("mode", option: "multiplayer")
  click_button('Play Now!')
  fill_in('player_one', with: 'Player 1')
  fill_in('player_two', with: 'Player 2')
  click_button('Begin Play!')
end
