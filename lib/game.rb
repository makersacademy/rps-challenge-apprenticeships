require_relative 'game_logic'

class Game
  attr_reader :player
  attr_accessor :extended
  
  def initialize(player)
    @player = player
    @computer_choices = ["Rock", "Paper", "Scissors"]
    @extended_computer_choices = ["Rock", "Paper", "Scissors", "Lizard", "Spock"]
    @extended = false
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

  def extended_computer_choice
    @extended_computer_choices.sample
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

  def decide_extended_winner(player_choice, computer_choice)
    if GameLogic.draw?(player_choice, computer_choice)
      "Draw"
    elsif GameLogic.player1_wins_extended_game?(player_choice, computer_choice)
      "Player"
    else
      "Computer"
    end
  end
end
