class Computer

  attr_reader :name, :choice

  def initialize
    @name = ["Deep Thought", "HAL 9000", "Computer"].sample
  end

  def make_move
    @choice = ["Rock", "Paper", "Scissors"].sample.downcase
  end

  def set_move(move)
    @choice = move.downcase
  end

end
