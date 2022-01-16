class Computer
  attr_reader :move
  
  RPS_MOVE = ["Rock", "Paper", "Scissors"].sample

  def initialize(move = RPS_MOVE)
    @move = move
  end

end