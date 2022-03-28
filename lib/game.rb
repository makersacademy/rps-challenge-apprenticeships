class Game
  attr_reader :player

  def initialize(player)
  end

  def determine_winner(player_choice)
    if (computer_choice == "rock" && player_choice == "scissors") ||
       (computer_choice == "scissors" && player_choice == "paper") ||
       (computer_choice == "paper" && player_choice == "rock")
      return "You lose"
    elsif (computer_choice == player_choice)
      return "It's a draw"
    else
      return "You WIN!"
    end
  end

private

  def computer_choice
    ["rock", "paper", "scissors"].sample
  end
end
