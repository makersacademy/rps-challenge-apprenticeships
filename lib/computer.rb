class Computer
  WEAPON = [:rock, :paper, :scissors]
  def choose_weapon
    WEAPON.sample
  end
end