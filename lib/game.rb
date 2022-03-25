class Game
  attr_reader :player
  def initialize(player)
    @player = player
    @cpu = Cpu.new
  end

  def cpu_move
    @cpu.move
  end
end
