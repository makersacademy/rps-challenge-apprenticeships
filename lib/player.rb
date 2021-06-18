class Player
  attr_accessor :name, :move

  def initialize(name)
    @name = name
  end

  def select(move)
    @move = move
  end
end
