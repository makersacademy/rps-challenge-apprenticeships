class Player
  attr_reader :name
  attr_reader :move

  def initialize(name)
    @name = name
    @move = nil
  end

  def select_move(select_move)
    @move = select_move
  end

  def reset_move
    @move = nil
  end

end
