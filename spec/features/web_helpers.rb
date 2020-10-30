def sign_in_and_play
  visit('/')
  fill_in :player1, with: 'Joe'
  fill_in :player2, with: 'Abby'
  click_button 'Submit'
end

def player_turn
  @player1 = ["Rock", "Paper", "Scissors"].sample
  click_on @player1
end
