require_relative 'paper'
require_relative 'scissors'

class Rock
  include Comparable
  def < (other)
    if other.instance_of? Paper
      return true
    elsif other.instance_of? Scissors
      return false
    elsif other.instance_of? Rock
      return false
    else raise error "choose an option"
    end
  end

  def > (other)
    if other.instance_of? Paper
      return false
    elsif other.instance_of? Scissors
      return true
    elsif other.instance_of? Rock
      return false
    else raise error "choose an option"
    end
  end

end