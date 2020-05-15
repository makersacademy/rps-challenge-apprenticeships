require_relative 'player'

class Game
  def play(player_choice, computer_choice)
    if player_choice.downcase == computer_choice
      "it's a draw!"
    elsif player_choice.downcase == 'rock' && computer_choice == 'scissors'
      "you win!"
    elsif player_choice.downcase == 'paper' && computer_choice == 'rock'
      "you win!"
    elsif player_choice.downcase == 'scissors' && computer_choice == 'paper'
      "you win!"
    elsif player_choice.downcase == 'rock' && computer_choice == 'paper'
      "you lose!"
    elsif player_choice.downcase == 'paper' && computer_choice == 'scissors'
      "you lose!"
    elsif player_choice.downcase == 'scissors' && computer_choice == 'rock'
      "you lose!"
    end 
  end

  def generate_computer_choice
    ["rock", "paper", "scissors"].sample
  end
end