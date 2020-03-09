class Game

  attr_reader :player_name, :computer, :choice

def initialize
  @player_name = player_name
  @computer = ["Rock", "Paper", "Scissors"].sample
end

def choose(weapon)
  @choice = weapon
end

# @computer = ["Rock", "Paper", "Scissors"].sample


def result
  if @choice == "Rock" && @computer == "Scissors" ||
     @choice == "Paper" && @computer == "Rock" ||
     @choice == "Scissors" && @computer == "Paper"
     return "#{@choice} wins"
  elsif @computer == "Rock" && @choice == "Scissors" ||
    @computer == "Paper" && @choice == "Rock" ||
    @computer == "Scissors" && @choice == "Paper"
    return "Computer wins"
  elsif @choice == @computer
  return "It's a draw"
  end
 end
end
