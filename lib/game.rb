require_relative 'computer'
require_relative 'player'

class Game
  attr_reader :player_1, :player_2

  def initialize(player_1, player_2=Computer.new)
    @player_1 = player_1
    @player_2 = player_2
  end

  def return_winner
    if draw?
      return "It's a tie!"
    elsif player1_wins?
      return "#{@player_1.name} wins!"
    else
      return "#{@player_2.name} wins!"
    end
  end

  private

  def player1_wins?
    (@player_1.choice == "rock" && @player_2.choice == "scissors") ||
    (@player_1.choice == "paper" && @player_2.choice == "rock") ||
    (@player_1.choice == "scissors" && @player_2.choice == "paper")
  end

  def draw?
    @player_1.choice == @player_2.choice
  end
end
