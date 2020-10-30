class Rps
  def play(player_move)
    # @comp_move = ['rock', 'paper', 'scissors'].sample
    # @comp_move = ['scissors'].sample
    # @winner = "draw"
    # @player_move = player_move
    #
    # if @player_move == "rock" && @comp_move == "scissors"
    #   @winner = 'player'
    # elsif @player_move == "scissors" && @comp_move == "paper"
    #   @winner = 'player'
    # elsif @player_move == "paper" && @comp_move == "rock"
    #   @winner = 'player'
    # elsif @comp_move == "rock" && @player_move == "scissors"
    #   @winner = 'comp'
    # elsif @comp_move == "scissors" && @player_move == "paper"
    #   @winner = 'comp'
    # elsif @comp_move == "paper" && @player_move == "rock"
    #   @winner = 'comp'
    # end
    # return "You drew!" if @winner == 'draw'
    # output = "You #{@winner == 'player' ? 'won' : 'lost'}!"
    "You #{['won', 'lost', 'drew'].sample}!"
  end
end
