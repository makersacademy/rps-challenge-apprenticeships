class Player
  attr_reader :name
  attr_reader :option

  def initialize(name)
    @name = name
  end

  def decision(option)
    @option = option
  end

  def rand
    @option = ["rock", "paper", "cissors"].sample
  end
  
end
