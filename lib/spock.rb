class Spock
  attr_reader :value
  def initialize
    @value = 'spock'
  end

  def win_status(opponent_choice)
    if [@value, Lizard.new.value, Paper.new.value].include?(opponent_choice)
      false
    else
      true
    end
  end
end