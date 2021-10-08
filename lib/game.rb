class Game
  attr_reader :player, :computer

  def initialize(player, computer)
    @player = player
    @computer = computer
  end

  def result(player_choice, computer_choice)
    return "You won!" if player_choice == "Rock" && computer_choice == "Scissors"
    return "You won!" if player_choice == "Paper" && computer_choice == "Rock"
    return "You won!" if player_choice == "Scissors" && computer_choice == "Paper"
    return "It's a draw!" if player_choice == computer_choice
    return "The computer won!"
  end
end
