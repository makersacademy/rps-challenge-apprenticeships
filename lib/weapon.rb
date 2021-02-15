class Weapon
  attr_reader :choice
  CHART = {
    rock: [:scissors, :lizard],
    paper: [:rock, :spock],
    scissors: [:paper, :lizard],
    lizard: [:paper, :spock],
    spock: [:rock, :scissors]
  }

  def initialize(choice = random_choice)
    @choice = choice.to_sym
  end

  def win_status(opponent_choice)
    CHART[@choice].include?(opponent_choice.to_sym) ? true : false
  end

  private

  def random_choice
    CHART.map { |k, _v| k }.sample
  end
end
