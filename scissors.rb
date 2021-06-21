require_relative 'rock'
require_relative 'paper'

class Scissors
  include Comparable
  def < (other)
    return other.instance_of? Rock
  end

  def > (other)
    return other.instance_of? Paper
  end

  def to_s
    return "Scissors"
  end
end