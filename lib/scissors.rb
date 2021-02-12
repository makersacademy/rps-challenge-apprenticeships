class Scissors
  attr_reader :value
  def initialize
    @value = 'scissors'
  end

  def win_status(opponent_choice)
    if [@value, Rock.new.value, Spock.new.value].include?(opponent_choice)
      false
    else
      true
    end
  end
end