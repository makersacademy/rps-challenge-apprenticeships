class Player 

  attr_reader :name 

  def initialize(name, choice)
    @name = name 
    @choice = Choice.new(choice)
  end
  

  def choice 
    @choice.show
  end 

end 
