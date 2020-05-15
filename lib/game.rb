require_relative 'player'

class Game
  def play(choice)
    computer_choice = ["rock", "paper", "scissors"].sample

    if choice.downcase == computer_choice
      "It's a draw!"
    elsif choice.downcase == 'rock' && computer_choice == 'scissors'
      "You win!"
    elsif choice.downcase == 'paper' && computer_choice == 'rock'
      "You win!"
    elsif choice.downcase == 'scissors' && computer_choice == 'paper'
      "You win!"
    elsif choice.downcase == 'rock' && computer_choice == 'paper'
      "You lose!"
    elsif choice.downcase == 'paper' && computer_choice == 'scissors'
      "You lose!"
    elsif choice.downcase == 'scissors' && computer_choice == 'rock'
      "You lose!"
    end 
end