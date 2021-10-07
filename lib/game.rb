class Game
  attr_reader :player
  
  def initialize(player)
    @player = player
  end

  def player_choice(choice)
    @player.set_choice(choice)
  end
end
