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

  def decide_winner(player1_choice, player2_choice)
    if draw?(player1_choice, player2_choice)
      "Draw"
    elsif player1_wins?(player1_choice, player2_choice)
      "Player 1"
    else
      "Player 2"
    end
  end

  private

  def player1_wins?(player1_choice, player2_choice)
    true if (
      player1_choice == "Scissors" && player2_choice == "Paper" ||
      player1_choice == "Rock" && player2_choice == "Scissors" ||
      player1_choice == "Paper" && player2_choice == "Rock"
  )
  end

  def draw?(player1_choice, player2_choice)
    player1_choice == player2_choice
  end

end
