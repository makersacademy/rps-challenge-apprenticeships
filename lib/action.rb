class Action 

  def self.winner(move1, move2)
    if move1 == move2
      return "it's a draw"
    elsif (move1 == 'rock' && move2 == 'paper') || (move1 == 'paper' && move2 == 'scissors')
      return "player 2 is winning"
    elsif (move1 == 'scissors' && move2 == 'rock')
      return "player 2 is winning"
    else
      return "player 1 is winning"
    end
  end

end