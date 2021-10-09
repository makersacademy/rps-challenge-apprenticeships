require_relative 'player'
class Game
  attr_reader :player_name, :player_choice
  def initialize(player_choice, player_name = Player.new)
    @player_name = player_name
    @player_choice = player_choice
    @options = ["rock", "paper", "scissors"]
  end

  def computer_choice
    @options[rand(3)]
  end

  def round_player_rock
    case 
      when @player_choice == "rock" && computer_choice == "rock" then "Draw!"
      when @player_choice == "rock" && computer_choice == "scissors" then "You won!"
      when @player_choice == "rock" && computer_choice == "paper" then "You lost!" 
    end
  end

  def round_player_paper
    case 
      when @player_choice == "paper" && computer_choice == "paper" then "Draw!"
      when @player_choice == "paper" && computer_choice == "rock" then "You won!"
      when @player_choice == "paper" && computer_choice == "scissors" then "You lost!" 
    end
  end

  def round_player_scissors
    case 
      when @player_choice == "scissors" && computer_choice == "scissors" then "Draw!"
      when @player_choice == "scissors" && computer_choice == "paper" then "You won!"
      when @player_choice == "scissors" && computer_choice == "rock" then "You lost!" 
    end
  end
end
