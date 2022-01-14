class Computer

  attr_reader :choices

  def initialize
    @choices = ["Rock", "Paper", "Scissors"]
  end

  def computers_choice
    @computers_choice = choices.sample
  end
end
