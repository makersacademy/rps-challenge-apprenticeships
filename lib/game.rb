class Game
  attr_reader :options

  def initialize
    @options = []
    @options << 'rock'
    @options << 'paper'
    @options << 'scissors'
  end

  def computer_choice
    options.sample
  end
end
