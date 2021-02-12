class PlayerChoice
  def initialize(choice)
    @options = {
      'rock' => Rock.new,
      'paper' => Paper.new,
      'scissors' => Scissors.new
    }
    @chosen_object = @options[choice]
  end

  def choice
    @chosen_object
  end
end