def sign_in_and_play
  visit '/'
  fill_in 'first_player_name', with: 'Player 1'
  fill_in 'second_player_name', with: 'Player 2'
  click_button 'Submit'
end

def multiplayer_sign_in
  first_player = double :player
  allow(first_player).to receive(:name).and_return("Player 1")
  second_player = double :player
  allow(second_player).to receive(:name).and_return("Player 2")
end
