class Computer
  attr_reader :computer_choice

  def initialize
    @computer_choice = ["Rock", "Paper", "Scissors"]
  end

  def generate_choice
    computer_choice.sample
  end
end
