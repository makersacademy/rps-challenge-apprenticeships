class RandomChoice
  def initialize
    @chosen_object = [Rock.new, Paper.new, Scissors.new, Lizard.new, Spock.new].sample
  end

  def choice
    @chosen_object
  end
end