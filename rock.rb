require_relative 'paper'
require_relative 'scissors'

class Rock
  include Comparable
  def < (other)
    return other.instance_of? Paper
  end

  def > (other)
    return other.instance_of? Scissors
  end

end