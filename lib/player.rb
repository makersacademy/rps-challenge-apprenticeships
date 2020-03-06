class Player
  attr_reader :name, :choice
  def initialize(name)
    @name = name
  end

  def choose(option)
    @choice = option
  end
end