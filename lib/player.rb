class Player
  attr_reader :name, :choice

  def initialize (name)
    @name = name
  end

  def set_move(move)
    @choice = move.downcase
  end
end
