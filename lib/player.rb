class Player
  attr_reader :name
  def initialize(name)
    if name == ""
      @name = "Bot"
      @bot = true
    else
      @name = name
      @bot = false
    end
  end
end
