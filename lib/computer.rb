require_relative 'player'

class Computer < Player
  attr_reader :computer_pick
  def computer_pick
    ["rock", "paper", "scissors"].sample
  end
end
