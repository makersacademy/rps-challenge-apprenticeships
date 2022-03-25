class Player
  def initialize(name)
    @name = name
  end

  def choose(choice)
    choice.each { |_key, value| @choice = value }
  end

  attr_reader :name, :choice
end
