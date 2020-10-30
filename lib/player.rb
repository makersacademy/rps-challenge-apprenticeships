class Player

  @@DEFAULT_HIT_POINTS = 60

  attr_reader :name
  attr_accessor :selection

  def initialize(name, selection = nil)
    @name = name
    @selection = selection
  end

  def action(phrase)
    @selection = phrase
  end

end
