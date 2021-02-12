class Rock
  attr_reader :value
  def initialize
    @value = 'rock'
  end

  def win_status(opponent_choice)
    if [@value, Paper.new.value].include?(opponent_choice)
      false
    else
      true
    end
  end
end