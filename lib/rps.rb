class RPS

  attr_reader :player, :opponent

  def initialize(player, opponent)
    @player = player
    @opponent = opponent.generate_choice
  end

  def result
    return "draw" if draw? == true
    player_wins? == true ? "win" : "lose"
  end

  private

  def player_wins?
    winning_round = [["rock", "scissors"], ["scissors", "paper"], ["paper", "rock"]]
    winning_round.include?([@player, @opponent])
  end

  def draw?
    @player == @opponent
  end
end
