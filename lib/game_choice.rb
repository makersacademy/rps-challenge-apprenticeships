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
    if (choice == "rock") && (computer.c_choice == "rock")
      return "Computer picked #{computer.c_choice}. It's a draw"
    elsif (choice == "scissors") && (computer.c_choice == "scissors")
      return "Computer picked #{computer.c_choice}. It's a draw"
    elsif (choice == "paper") && (computer.c_choice == "paper")
      return "Computer picked #{computer.c_choice}. It's a draw"
    elsif (choice == "rock") && (computer.c_choice == "scissors")
      return "Computer picked #{computer.c_choice}. You win"
    elsif (choice == "scissors") && (computer.c_choice == "rock")
      return "Computer picked #{computer.c_choice}. Computer wins"
    elsif (choice == "scissors") && (computer.c_choice == "paper")
      return "Computer picked #{computer.c_choice}. You win"
    elsif (choice == "rock") && (computer.c_choice == "paper")
      return "Computer picked #{computer.c_choice}. Computer wins"
    elsif (choice == "paper") && (computer.c_choice == "scissors")
      return "Computer picked #{computer.c_choice}. Computer wins"
    else (choice == "paper") && (computer.c_choice == "rock")
      return "Computer picked #{computer.c_choice}. You win"
    end
  end
end
