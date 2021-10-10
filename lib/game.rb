class Game
  attr_reader :player, :computer

  def initialize(player, computer)
    @player = player
    @computer = computer
  end

  def winner(player_choice, computer_choice)
    case player_choice
    when "Rock"
      return "You won!" if computer_choice == "Scissors"
    when "Paper"
      return "You won!" if computer_choice == "Rock"
    when "Scissors"
      return "You won!" if computer_choice == "Paper"
    end
    return "It is a tie!" if player_choice == computer_choice
    return "You lost!"
  end

  def self.create(player, computer)
    @game = Game.new(player, computer)
  end

  def self.instance
    @game
  end
end
