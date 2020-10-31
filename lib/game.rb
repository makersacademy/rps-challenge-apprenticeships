class Game
  attr_reader :player

  def initialize(player)
    @player = player
  end

  def comp_choice
    options = [:rock, :paper, :scissors]
    options[rand(2)]
  end
end
