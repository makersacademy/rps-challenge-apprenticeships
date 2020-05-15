require_relative 'player'

class Game
  def play(player_choice, computer_choice)
    if player_choice.downcase == computer_choice
      "It's a draw!"
    elsif player_choice.downcase == 'rock' && computer_choice == 'scissors'
      "You win!"
    elsif player_choice.downcase == 'paper' && computer_choice == 'rock'
      "You win!"
    elsif player_choice.downcase == 'scissors' && computer_choice == 'paper'
      "You win!"
    elsif player_choice.downcase == 'rock' && computer_choice == 'paper'
      "You lose!"
    elsif player_choice.downcase == 'paper' && computer_choice == 'scissors'
      "You lose!"
    elsif player_choice.downcase == 'scissors' && computer_choice == 'rock'
      "You lose!"
    end 
  end

  def generate_computer_choice
    ["rock", "paper", "scissors"].sample
  end

end