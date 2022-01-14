require_relative 'player'

class Game
  attr_reader :player_one
  attr_reader :cpu_move
  attr_reader :result

  def initialize(player_one)
    @player_one = player_one
    @cpu_move = nil
  end

  def computer_move
    @cpu_move = ["Rock", "Paper", "Scissors"].sample
  end

  def outcome(player_one)
    if (player_one.move == "Rock" && cpu_move == "Scissors") ||
       (player_one.move == "Paper" && cpu_move == "Rock") ||
       (player_one.move == "Scissors" && cpu_move == "Paper")
      @result = player_one
    elsif (player_one.move == "Rock" && cpu_move == "Paper") ||
          (player_one.move == "Paper" && cpu_move == "Scissors") ||
          (player_one.move == "Scissors" && cpu_move == "Rock")
      @result = "CPU"
    else
      @result = "Draw"
    end
  end
end
