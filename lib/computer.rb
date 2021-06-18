class Computer

  attr_reader :name

  def initialize
    @name = ["Deep Thought"].sample
  end

  def make_move
    ["Rock", "Paper", "Scissors"].sample
  end


end
