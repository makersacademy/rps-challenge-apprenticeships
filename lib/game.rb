require_relative "computer.rb"
require_relative 'player.rb'

class Game 
  attr_reader :player_move, :computer_move

  RULES = { "Rock" => "Scissors", "Paper" => "Rock", "Scissors" => "Paper" }

  def initialize(player_move, computer_move)
    @player_move = player_move
    @computer_move = computer_move
  end 

  def result 
    
    if RULES[@computer_move] == @player_move
      "You have lost!"
    elsif @player_move == @computer_move
      "It's a draw, try again"
    else
      "You have won!"
    end 
  end 
end 
