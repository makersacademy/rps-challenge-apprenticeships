class Computer

  attr_reader :name, :choice

  def initialize
    @name = ["Deep Thought"].sample
  end

  def make_move
    @choice = ["Rock", "Paper", "Scissors"].sample
  end


end
