class Game 
  attr_reader :player_1, :player_2, :winner
  def initialize(player_1, player_2)
    @player_1 = player_1
    @player_2 = player_2
  end

  def winning
    if @player_1.move == "rock" && @player_2.move == "scissors"
      @winner = "#{player_1.name} won"
    elsif @player_1.move == "paper" && @player_2.move == "rock" 
      @winner = "#{player_1.name} won"
    elsif @player_1.move == "scissors" && @player_2.move == "paper"
      @winner = "#{player_1.name} won"
    elsif @player_1.move == "paper" && @player_2.move == "scissors" 
      @winner = "Computer won"
    elsif @player_1.move == "scissors" && @player_2.move == "rock" 
      @winner = "Computer won"
    elsif @player_1.move == "rock" && @player_2.move == "paper"
      @winner = "Computer won"
    else
      @winner = "it's a draw"
    end
    @winner
  end
end