require_relative 'player'
require_relative 'computer'
require_relative 'choice'

class RPSGame
  attr_reader :players, :player_select, :com_choice

  def initialize(player_class = Player.new(:player_n), choices_class = Choice.new,
  com_class = Computer.new)
    @player_1 = player_class
    @choice = choices_class
    @com = com_class
    @players = {p1: @player_1}
    @player_select = :none
    @com_choice = :none
  end

  def player
    @players[:p1].name
  end

  def player_choice(option)
    @player_select = option.to_sym
  end

  def computer_choice
    @com_choice = @com.com_rand_option
  end

  def result
    @choice.resolve(player_select, com_choice)
  end
end