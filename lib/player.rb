class Player
  attr_reader :name, :choice, :score

  def initialize (name)
    @name = name
    @score = 0
  end

  def set_move(move)
    options = {
      "roc" => "rock",
      "pap" => "paper",
      "sci" => "scissors",
      "liz" => "lizard",
      "spo" => "spock"
    }
    if options.include?(move)
      @choice = options[move]
    elsif options.has_value?(move)
      @choice = move
    else
      @choice = "an invalid move"
    end
  end

  def win!
    @score += 1
  end
end
