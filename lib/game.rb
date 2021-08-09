class Game
  def initialize(player_choice, computer = Computer.new)
    @player_choice = player_choice
    @computer_choice = Computer.computer_choice
  end
end