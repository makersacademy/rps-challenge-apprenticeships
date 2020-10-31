class Player
  attr_reader :name, :win, :score, :person
  def initialize(name)
    @name = name
  end

  def win
    @score += 1
  end

end
