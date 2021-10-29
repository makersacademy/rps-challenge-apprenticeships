class Game

  def play(player1, player2)
    raise 'Empty player 2 choice' if player2.nil?
    raise 'Empty player 1 choice' if player1.nil?
  end
end