class Player
  attr_reader :chosen
  attr_reader :name
  
  def initialize(name)
    @chosen = ""
    if name == ""
      @name = "Bot"
      @bot = true
    else
      @name = name
      @bot = false
    end
  end

  def choose(chosen)
    @chosen = chosen
  end
end
