class Player
  attr_reader :name, :choice

  def initialize(name, choice)
    @name = name == "" ? "You" : name 
    @choice = choice
  end
end
