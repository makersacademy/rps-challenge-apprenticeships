class ComputerChoice

  attr_reader :choice

  def initialize
    @choice = ""
  end

  def rock_paper_scissors
    num = rand(1..3)
    if num == 1
      @choice = 'rock'
    elsif num == 2
      @choice = 'paper'
    else
      @choice = 'scissors'
    end  
  end

end
