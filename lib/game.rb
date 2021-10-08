require 'game_logic'

class Game
  attr_reader :player
  
  def initialize(player)
    @player = player
    @computer_choices = ["Rock", "Paper", "Scissors"]
  end

  def self.create(player)
    @game = Game.new(player)
  end

  def self.instance
    @game
  end

  def player_choice(choice)
    @player.move(choice)
  end

  def computer_choice 
    @computer_choices.sample
  end

  def decide_winner(player_choice, computer_choice)
    if GameLogic.draw?(player_choice, computer_choice)
      "Draw"
    elsif GameLogic.player1_wins?(player_choice, computer_choice)
      "Player"
    else
      "Computer"
    end
  end
end
