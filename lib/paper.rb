class Paper
  attr_reader :value
  def initialize
    @value = 'paper'
  end

  def win_status(opponent_choice)
    if [@value, Scissors.new.value, Lizard.new.value].include?(opponent_choice)
      false
    else
      true
    end
  end
end