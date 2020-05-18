class Game
  attr_reader :player_move
  attr_reader :computer_move
  def initialize(player_move)
    @player_move = player_move
    @computer_move = ["Rock", "Scissors", "Paper"].sample
  end

  def result
    if @player_move == @computer_move
      return "It's a draw! :/"
    elsif (@player_move == 'Rock' && @computer_move == 'Paper') ||
      (@player_move == 'Paper' && @computer_move == 'Scissors') ||
      (@player_move == 'Scissors' && @computer_move == 'Rock')
      return "You Lost! :("
    else
      return "You Won! :)"
    end
  end
end
