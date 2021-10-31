class Player
  attr_reader :name, :choice

  def initialize(player, choice)
    @name = player
    @choice = choice
  end
end
