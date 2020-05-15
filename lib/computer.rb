class Computer
  attr_reader :pick_weapon
  def pick_weapon
    ["rock", "paper", "scissors"].sample
  end
end
