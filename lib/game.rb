class Game

  attr_reader :player_choice, :comp_choice

  def initialize(player_choice, comp_choice)
    @player_choice = player_choice
    @comp_choice = comp_choice
  end

end