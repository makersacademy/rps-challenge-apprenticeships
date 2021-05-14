class Game

  def initialize(player)
    @player = player
    @move = nil
  end

  attr_reader :player, :move
  
  def random_number
    1 + rand(3)
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
    @move = decision
    
    if @player.choice == @move
      "It's a draw!"
    elsif @player.choice == 'rock' && @move == 'scissors'
      'You win!'
    elsif @player.choice == 'paper' && @move == 'rock'
      'You win!'
    elsif @player.choice == 'scissors' && @move == 'paper'
      'You win!'
    else
      'You lose!'
    end
  end

end
