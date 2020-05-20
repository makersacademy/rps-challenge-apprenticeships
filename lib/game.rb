class Game
  attr_reader :options

  def initialize
    @options = ['rock', 'paper', 'scissors']
  end

  def computer_choice
    options.sample
  end
end
