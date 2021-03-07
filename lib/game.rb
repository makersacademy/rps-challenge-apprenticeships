class Game 
  def self.who_wins(move1, move2)
    return "It's a draw" if move1 == move2

    return 'Player 2 wins' if (move1 == 'r' && move2 == 'p') || (move1 == 'p' && move2 == 's')

    return 'Player 2 wins' if (move1 == 's' && move2 == 'r')

    return 'Player 1 wins'
  end
end