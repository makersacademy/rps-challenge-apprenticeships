class Game
  attr_reader :player, :computer

  def initialize(player, computer)
    @player = player
    @computer = computer
  end

  def result(player_choice, computer_choice)
    if player_choice == "Rock" && computer_choice == "Scissors"
      return "You won!"
    elsif player_choice == "Paper" && computer_choice == "Rock"
      return "You won!"
    elsif player_choice == "Scissors"  && computer_choice == "Paper"
      return "You won!"
    elsif player_choice == computer_choice
      return "It's a draw!"
    else
      return "The computer won!"
    end
  end
end