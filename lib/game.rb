class Game

  def initialize(player, computer = Computer.new)
    @player = player
    @computer = computer
  end

  def player
    @player
  end

  def computer
    @computer
  end

end
