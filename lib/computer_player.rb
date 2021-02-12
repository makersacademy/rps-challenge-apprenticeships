require_relative './player'

class ComputerPlayer < Player

  DEFAULT_WEAPONS = ['rock', 'paper', 'scissors']
  DEFAULT_NAME = 'Super Computer'

  attr_reader :weapon_list

  def initialize(name = DEFAULT_NAME, weapon_list = DEFAULT_WEAPONS)
    @name = name
    @weapon_list = weapon_list
  end

  def random_weapon
    @weapon = @weapon_list.sample
  end
end