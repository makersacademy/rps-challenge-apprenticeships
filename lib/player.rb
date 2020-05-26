require_relative 'game.rb'

class Player
  attr_reader :name, :computer
  attr_accessor :outcome

  def initialize(name)
    @name = name
    @computer = Game.new.computer_choice
    @outcome = 'neutral'
  end

  def player_vs_computer(choice)
    if computer == choice
      @outcome = 'draw'
    elsif (computer == 'rock') && (choice == 'scissors')
      @outcome = 'lose'
    elsif (computer == 'rock') && (choice == 'paper')
      @outcome = 'win'
    elsif (computer == 'paper') && (choice == 'scissors')
      @outcome = 'win'
    elsif (computer == 'paper') && (choice == 'rock')
      @outcome = 'lose'
    elsif (computer == 'scissors') && (choice == 'paper')
      @outcome = 'lose'
    elsif (computer == 'scissors') && (choice == 'rock')
      @outcome = 'win'
    end
  end

end
