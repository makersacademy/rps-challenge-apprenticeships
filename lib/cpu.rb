class Cpu 
  attr_reader :name
  def initialize
    @name = "CPU"
    @moves = ["Rock", "Paper", "Scissors"]
  end

  def move
    @moves[rand(0..2)]
  end
end
