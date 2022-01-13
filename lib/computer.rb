class Computer 

  def initialize 
    @rps_outcomes = ["Rock", "Paper", "Scissors"]
  end

  def rps
    index = rand (0..2)
    comp_choice = @rps_outcomes[index]
  end

end