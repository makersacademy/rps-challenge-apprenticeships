require_relative 'player'

class Game

  def randomize
    ['rock', 'paper', 'scissors'].sample
  end

  def win(choice, opponent)
    if choice == 'rock' && opponent == 'scissors'
      'Player wins!'
    elsif choice == 'scissors' && opponent == 'paper'
      'Player wins!'
    elsif choice == 'paper' && opponent == 'rock'
      'Player wins!'
    elsif choice == 'scissors' && opponent == 'rock'
      'Computer wins!'
    elsif choice == 'paper' && opponent == 'scissors'
      'Computer wins!'
    elsif choice == 'rock' && opponent == 'paper'
      'Computer wins!'
    else
      'Try again'
    end
  end
end
