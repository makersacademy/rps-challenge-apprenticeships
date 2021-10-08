class Computer
  attr_reader :choice

  def initialize
    @choice = choice
  end

  def random_choice
    @choice = ["rock", "paper", "scissors",].sample
  end
end