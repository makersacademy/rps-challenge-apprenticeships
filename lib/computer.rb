class Computer
  def initialize 
    @moves = ["rock", "paper", "scissors"]
  end

  def move
    @moves.sample
  end
end