class Game
  attr_reader :player, :comp_choice

  def initialize(player)
    @player = player
    @comp_choice = [:rock, :paper, :scissors].sample
  end
end
