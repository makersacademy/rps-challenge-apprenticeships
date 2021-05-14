class Game
  attr_reader :result
  attr_reader :computer
  def initialize
    @computer = ["paper", "scissor", "rock"].sample
    @result = result
  end

  def play(player_choice)
    if player_choice == "scissors" && computer == "paper"
      @result = $player_1.name
    elsif player_choice == "rock" && computer == "scissor"
      @result = $player_1.name
    elsif player_choice == "paper" && computer == "rock"
      @result = $player_1.name
    elsif player_choice == "scissors" && computer == "rock"
      @result = "CPU wins"
    elsif player_choice == "rock" && computer == "paper" 
      @result = "CPU wins"
    elsif player_choice == "paper" && computer == "scissor"
      @result = "CPU wins"
    else 
      @result = "its a draw"
    end
  end

end
