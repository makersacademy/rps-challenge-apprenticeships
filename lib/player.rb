class Player
  attr_reader :name
  attr_reader :option

  def initialize(name)
    @name = name
    reset
  end

  def decision(option)
    @option = option
  end

  def rand
    @option = ["rock", "paper", "scissors"].sample
  end
  
  def reset
    @option = nil
  end
end
