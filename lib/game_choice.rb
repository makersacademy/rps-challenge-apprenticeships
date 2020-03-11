class Computer
attr_accessor :c_choice
  def initialize
  @c_choice = ['rock','paper', 'scissors'].sample
  end

  def c_start
  return @c_choice
  end
end

class Game

    def initialize
      @computer = Computer.new
    end

  def start(choice)
    computer =  @computer
    win_conditions = {
      'rock' => 'scissors',
      'paper' => 'rock',
      'scissors' => 'paper'
    }

    return "Computer picked #{computer.c_choice}. It's a draw" if choice == computer.c_choice
    return win_conditions[choice] == computer.c_choice ?
      "Computer picked #{computer.c_choice}. You win" : "Computer picked #{computer.c_choice}. Computer wins"
    end
end
