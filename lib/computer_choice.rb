class ComputerChoice

  attr_reader :choice

  def initialize
    @choice = ""
  end

  def make_decision
    @choice = rock_paper_scissors
  end

  private

  def rock_paper_scissors
    num = rand(1..3)
    if num == 1
      'rock'
    elsif num == 2
      'paper'
    else
      'scissors'
    end  
  end

end
