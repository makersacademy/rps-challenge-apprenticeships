class Results
  def check(player_one_move, player_two_move)
    @winner = "Player 1" if player_one_move == 'Rock' && player_two_move == 'Scissor'
    @winner = "Player 1" if player_one_move == 'Scissor' && player_two_move == 'Paper'
    @winner = "Player 1" if player_one_move == 'Paper' && player_two_move == 'Rock'
    @winner = "Player 2" if player_two_move == 'Rock' && player_one_move == 'Scissor'
    @winner = "Player 2" if player_two_move == 'Scissor' && player_one_move == 'Paper'
    @winner = "Player 2" if player_two_move == 'Paper' && player_one_move == 'Rock'
    @winner = "Nobody" if player_one_move == 'Rock' && player_two_move == 'Rock'
    @winner = "Nobody" if player_one_move == 'Scissor' && player_two_move == 'Scissor'
    @winner = "Nobody" if player_one_move == 'Paper' && player_two_move == 'Paper'
    @winner
  end
end
