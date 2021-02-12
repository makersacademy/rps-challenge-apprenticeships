class Lizard
  attr_reader :value
  def initialize
    @value = 'lizard'
  end

  def win_status(opponent_choice)
    if [@value, Rock.new.value, Scissors.new.value].include?(opponent_choice)
      false
    else
      true
    end
  end
end