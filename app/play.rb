class PlayRPS

  attr_writer :rand_seed

  def initialize(player_choice)
    @choice = player_choice
  end

  def randomization_algorithm
    rand 2344356
  end

  def computer_guess
    srand (@rand_seed || randomization_algorithm)
    computer_choice = ['rock', 'paper', 'scissors']
    computer_choice.sample
  end
  
  def rule_engine
    {
      'rock': ['scissors'],
      'paper': ['rock'],
      'scissors': ['paper']
    }
  end

  def winner_is
    if rule_engine[computer_guess.to_sym].include? @choice
      'Computer wins!'
    elsif rule_engine[@choice.to_sym].include? computer_guess
      'You win!'
    else
      'It is a tie!'
    end
  end

end
