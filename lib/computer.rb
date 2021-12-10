class Computer
  attr_reader :moves

  def initialize
    @moves = ["Rock", "Paper", "Scissors"]
  end

  def random_turn
    @moves.sample
  end
end
