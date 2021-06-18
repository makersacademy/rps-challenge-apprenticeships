class Player
  attr_reader :name, :choice

  def initialize (name)
    @name = name
  end

  def set_move(move)
    options = {
      "roc" => "rock",
      "pap" => "paper",
      "sci" => "scissors",
    }
    if move == "roc" || move == "pap" || move == "sci"
      @choice = options[move]
    else
      @choice = move
    end
  end
end
