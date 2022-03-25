class Game
  attr_reader :player, :cpu
  def initialize(player)
    @player = player
    @cpu = Cpu.new
  end

  def winner
    showdown(player, cpu)
  end

  def showdown(player_1, player_2)
    case player_1.move
    when player_2.move
      "Draw"
    when "Rock"
      player_2.move == "Scissors" ? player_1.name : player_2.name
    when "Scissors"
      player_2.move == "Paper" ? player_1.name : player_2.name
    when "Paper"
      player_2.move == "Rock" ? player_1.name : player_2.name
    end
  end
end
