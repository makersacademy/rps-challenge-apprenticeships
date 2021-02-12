class PlayerChoice
  def initialize(choice)
    @options = {
      'rock' => Rock.new,
      'paper' => Paper.new,
      'scissors' => Scissors.new,
      'lizard' => Lizard.new,
      'spock' => Spock.new
    }
    @chosen_object = @options[choice]
  end

  def choice
    @chosen_object
  end
end
