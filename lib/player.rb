class Player
  attr_reader :chosen, :name, :bot
  
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

  def bot_pick
    @chosen = ["rock","paper","scissors"].sample
  end

  def choose(chosen)
    @chosen = chosen
  end
end
