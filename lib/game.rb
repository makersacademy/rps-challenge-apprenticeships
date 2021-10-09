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
end
