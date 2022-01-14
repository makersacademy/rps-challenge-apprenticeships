require_relative 'player'

class Game
  attr_reader :player_one
  attr_reader :player_two
  attr_reader :result
  attr_reader :current_turn

  def initialize(player_one, player_two)
    @player_one = player_one
    @player_two = player_two
    @current_turn = @player_one
  end

  def switch_turn
    if @current_turn == @player_one
      @current_turn = @player_two
    elsif @current_turn == @player_two
      @current_turn = @player_one
    end
  end
  
  def opponent
    if @current_turn == @player_one
      @player_two
    elsif @current_turn == @player_two
      @player_one
    end
  end

  def outcome(player_one, player_two)
    if (player_one.move == "Rock" && player_two.move == "Scissors") ||
       (player_one.move == "Paper" && player_two.move == "Rock") ||
       (player_one.move == "Scissors" && player_two.move == "Paper")
      @result = player_one
    elsif (player_one.move == "Rock" && player_two.move == "Paper") ||
          (player_one.move == "Paper" && player_two.move == "Scissors") ||
          (player_one.move == "Scissors" && player_two.move == "Rock")
      @result = player_two
    else
      @result = "Draw"
    end
  end
end
