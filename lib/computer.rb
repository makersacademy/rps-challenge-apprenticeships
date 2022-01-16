class Computer

  attr_reader :choices, :computers_choice

  def initialize
    @choices = ["Rock", "Paper", "Scissors"]
    $computers_choice = computers_choice
  end

  def computer_choice
    $computers_choice = choices.sample
  end
end
