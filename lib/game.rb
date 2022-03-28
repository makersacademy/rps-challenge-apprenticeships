require_relative 'player'
require_relative 'computer'
require_relative 'choice'

class RPSGame
  attr_reader :players, :player_select, :com_choice

  def initialize(player_class = Player.new(:player_name), choices_class = Choice.new,
  com_class = Computer.new)
    @player_1 = player_class
    @choice = choices_class
    @com = com_class
    @players = [@player_1]
    @player_1_choice = :none
    @com_choice = :none
  end

  def player
    @players.name
  end

  def player_choice
    @player_choice = option.to_sym
  end

  def computer_choice
    @com_choice = @computer.com_rand_option
  end

  def result
    @choice.resolve(player_select, com_choice)
  end
end