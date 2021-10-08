class Game
  def initialize(player, computer)
    @players = [player, computer]
  end

  def result(player_choice, computer_choice)
    if player_choice == "Rock" && computer_choice == "Scissors"
      return "The player won"
    elsif player_choice == "Paper" && computer_choice == "Rock"
      return "The player won"
    elsif player_choice == "Scissors"  && computer_choice == "Paper"
      return "The player won"
    elsif player_choice == computer_choice
      return "It's a draw"
    else
      return "The computer won"
    end
  end
end