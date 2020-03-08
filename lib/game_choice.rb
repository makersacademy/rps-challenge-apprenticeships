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
      return "You draw"
    elsif (choice == "scissors") && (computer.c_choice == "scissors")
      return "It's a draw"
    elsif (choice == "paper") && (computer.c_choice == "paper")
      return "It's a draw"
    elsif (choice == "rock") && (computer.c_choice == "scissors")
      return "You win"
    elsif (choice == "scissors") && (computer.c_choice == "rock")
      return "Computer wins"
    elsif (choice == "scissors") && (computer.c_choice == "paper")
      return "You win"
    elsif (choice == "rock") && (computer.c_choice == "paper")
      return "Computer wins"
    elsif (choice == "paper") && (computer.c_choice == "scissors")
      return "Computer wins"
    else (choice == "paper") && (computer.c_choice == "rock")
      return "You win"
    end
  end

end
