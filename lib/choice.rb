class Choice 

RANDOM_CHOICE = ["rock", "paper", "scissors"].sample
  

  def initialize(choice = RANDOM_CHOICE)
    @choice = choice
  end 

  def show 
    @choice
  end

end 