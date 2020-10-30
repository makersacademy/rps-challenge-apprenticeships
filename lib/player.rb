class Player
  attr_reader :name, :score
  attr_accessor :selection

  def initialize(name)
    @name = name
    @score = 0
    @selection = ""
  end

  def increment_score
    @score += 1
  end

  def reset_score
    @score = 0
  end
end
