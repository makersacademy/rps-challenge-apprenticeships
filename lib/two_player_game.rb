require 'player'
require 'game_logic'

class TwoPlayerGame
  attr_reader :player1, :player2

  def initialize(player1, player2)
    @player1 = player1
    @player2 = player2
  end

  def player_choice(player, choice)
    player.move(choice)
  end

  def decide_winner(player1_choice, player2_choice)
    if GameLogic.draw?(player1_choice, player2_choice)
      "Draw"
    elsif GameLogic.player1_wins?(player1_choice, player2_choice)
      "Player 1"
    else
      "Player 2"
    end
  end
end
