class Game

  attr_reader :result
  
  def initialize (player_1_move, computer_move)
    @player_1_move = player_1_move
    @computer_move = computer_move
  end

  def game_result
    if @player_1_move == @computer_move
      @result = "It's a draw"

    elsif @player_1_move == "Rock" && @computer_move == "Paper"
      @result = "Sorry #{$player_1.name}, but the computer won!"

    elsif @player_1_move == "Paper" && @computer_move == "Scissors"
      @result = "Sorry #{$player_1.name}, but the computer won!"

    elsif @player_1_move == "Scissors" && @computer_move == "Rock"
      @result = "Sorry #{$player_1.name}, but the computer won!"

    else 
      @result = "Congrats #{$player_1.name}, you've won!"
    end
  end
end