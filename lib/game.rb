class Game
  attr_reader :player_1, :player_2
  def initialize(player_1, player_2)
    @player_1 = player_1
    @player_2 = player_2
  end

  def winner
    showdown
  end

  def showdown
    case @player_1.move
    when @player_2.move
      "Draw"
    when "Rock"
      @player_2.move == "Scissors" ? @player_1.name : @player_2.name
    when "Scissors"
      @player_2.move == "Paper" ? @player_1.name : @player_2.name
    when "Paper"
      @player_2.move == "Rock" ? @player_1.name : @player_2.name
    end
  end
end
