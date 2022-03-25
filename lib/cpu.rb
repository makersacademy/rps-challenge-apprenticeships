class Cpu 
  attr_reader :name, :move
  def initialize
    @name = "CPU"
    @move = ["Rock", "Paper", "Scissors"].sample
  end
end
