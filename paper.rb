require_relative 'rock'
require_relative 'scissors'

class Paper
  include Comparable
  def < (other)
    return other.instance_of? Scissors
  end

  def > (other)
    return other.instance_of? Rock
  end
end