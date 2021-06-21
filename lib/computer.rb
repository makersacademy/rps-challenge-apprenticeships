class Computer
  WEAPON = %i(rock paper scissors)

  attr_reader :option

def initialize(option = WEAPON.sample)
  @option = option
end