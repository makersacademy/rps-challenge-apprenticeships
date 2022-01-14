class Player
  attr_reader :name
  attr_reader :move

  def initialize(name, robot)
    @name = name
    @robot = robot
    @move = nil
  end

  def select_move(select_move)
    @move = select_move
  end

  def reset_move
    @move = nil
  end

  def robot?
    @robot
  end

  def computer_move
    @move = ["Rock", "Paper", "Scissors"].sample
  end

end
