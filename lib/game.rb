class Game
  CHOICES = %w[rock paper scissors].freeze
  STATUSSES = { make_choice: 'make a choice', waiting: 'waiting', played: 'played' }.freeze
  OUTCOME = {
    draw: "It's a draw",
    win: "wins",
    lose: "lose"
  }.freeze
  attr_reader :player1, :player2, :status, :results

  def initialize(player1, player2)
    @player1 = player1
    @player2 = player2
    @status = STATUSSES[:make_choice]
    @rules = [
      [OUTCOME[:draw], OUTCOME[:lose], OUTCOME[:win]],
      [OUTCOME[:win], OUTCOME[:draw], OUTCOME[:lose]],
      [OUTCOME[:lose], OUTCOME[:win], OUTCOME[:draw]]
    ]
    @results = ""
  end

  private def wins?(choice1, choice2)
    @rules[CHOICES.find_index(choice1.choice)][CHOICES.find_index(choice2.choice)] == OUTCOME[:win]
  end

  private def winner
    wins?(player1, player2) ? player1.name : player2.name
  end

  private def not_valid?(choice)
    CHOICES.find_index(choice).nil?
  end

  def play
    raise 'Empty player 2' if player2.nil?
    raise 'Empty player 1' if player1.nil?
    raise 'Empty choice player 2' if player2.choice.nil?
    raise 'Empty choice player 1' if player1.choice.nil?
    raise 'Invalid option for choice for player 1' if not_valid?(player1.choice)
    raise 'Invalid option for choice for player 2' if not_valid?(player2.choice)
    return "draw" if player1.choice == player2.choice
    return "#{winner} wins"
  end

  def submit_choice
    @status = STATUSSES[:waiting]
  end

  def received_player_2_choice
    @status = STATUSSES[:played]
    @results = play
  end

end
