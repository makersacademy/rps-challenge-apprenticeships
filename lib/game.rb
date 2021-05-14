class Game

  def initialize(player)
    @player = player
  end

  attr_reader :player
  
  def random_number
    result = 1 + rand(3)
  end

  def decision
    number = random_number

    if number == 1
      'rock'
    elsif number == 2
      'paper'
    else
      'scissors'
    end
  end

  def play
    computer = decision
    
    if @player.choice == computer
      "It's a draw!"
    elsif @player.choice == 'rock' && computer == 'scissors'
      'You win!'
    elsif @player.choice == 'paper' && computer == 'rock'
      'You win!'
    elsif @player.choice == 'scissors' && computer == 'paper'
      'You win!'
    else
      'You lose!'
    end
  end

end
