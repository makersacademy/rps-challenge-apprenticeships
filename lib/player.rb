class Player
  DEFAULT_CHOICE = nil
  def initialize(name, choice=DEFAULT_CHOICE)
    @name = name
    @choice = choice
  end

  attr_reader :name
  attr_accessor :choice
end
