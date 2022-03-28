class Weapon
  attr_reader :winner, :loser, :draw

  def initialize
    @winner = false
    @loser = false
    @draw = false
  end

  def challenge(opponent)
    generate_result(opponent)
  end

end
