class RPSGame

  attr_reader :player1, :player2
  SELECTION = ['Rock', 'Paper', 'Scissors'].freeze

  def initialize(player1, player2 = "Computer")
    @player1 = player1
    @player2 = player2
  end

  def play(player_1_choice, player_2_choice = computer_choice)
    raise 'Invalid Input by Player' unless SELECTION.include?(player_1_choice)
    raise 'Invalid Input by Player 2' unless SELECTION.include?(player_2_choice)

    return 'Draw' if player_1_choice == player_2_choice
    return winner(player_1_choice + player_2_choice)
  end

  private

  def winner(search_winner)
    game_logic = {
      "RockScissors" => @player1,
      "RockPaper" => @player2,
      "PaperScissors" => @player2,
      "PaperRock" => @player1,
      "ScissorsRock" => @player2,
      "ScissorsPaper" => @player1
    }
    return game_logic[search_winner]
  end

  def computer_choice
    rand = SELECTION.sample
    return rand
  end

end
