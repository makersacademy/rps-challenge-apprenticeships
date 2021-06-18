class Computer

  attr_reader :name, :choice

  def initialize
    @name = ["Deep Thought", "HAL 9000", "Computer"].sample
    @choice = make_move
  end

  def make_move
    @choice = ["Rock", "Paper", "Scissors"].sample.downcase
  end

  def set_move(_move)
    @choice = ["Rock", "Paper", "Scissors"].sample.downcase
  end

end
