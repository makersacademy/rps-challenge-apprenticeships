class Computer

  attr_reader :name, :choice, :score

  def initialize
    @name = ["Deep Thought", "HAL 9000", "Computer"].sample
    @choice = make_move
    @score = 0
  end

  def make_move
    @choice = ["Rock", "Paper", "Scissors"].sample.downcase
  end

  def set_move(_move)
    @choice = ["Rock", "Paper", "Scissors"].sample.downcase
  end

  def win!
    @score += 1
  end
end
