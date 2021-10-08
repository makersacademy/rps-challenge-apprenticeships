require 'player'

class TwoPlayerGame
  attr_reader :player1, :player2

  def initialize(player1, player2)
    @player1 = player1
    @player2 = player2
  end

  def player_choice(player, choice)
    player.move(choice)
  end
end
