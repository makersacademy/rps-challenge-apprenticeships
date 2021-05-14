require_relative 'player.rb'

class Game
  attr_reader :opponent_choice
  def self.create(player)
    @game = Game.new(player)
  end

  def self.instance
    @game
  end

  def initialize(player)
    @player = [player]
    @opponent_choice = ["ROCK", "PAPER", "SCISSORS"].sample
  end

  def player
    @player[0]
  end

  def play_again
    @opponent_choice = ["ROCK", "PAPER", "SCISSORS"].sample
  end

end
