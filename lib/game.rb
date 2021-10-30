class Game
  CHOICES = %w[rock paper scissors]
  STATUSSES = { make_choice: 'make a choice', waiting: 'waiting', win: 'win', lose: 'lose' }.freeze
  @@outcome = {
    draw: "It's a draw",
    win: "wins",
    lose: "lose"
  }
  attr_reader :player1, :player2, :status

  def initialize(player1, player2)
    @player1 = player1
    @player2 = player2
    @status = STATUSSES[:make_choice]
    @rules = [
      [@@outcome[:draw], @@outcome[:lose], @@outcome[:win]],
      [@@outcome[:win], @@outcome[:draw], @@outcome[:lose]],
      [@@outcome[:lose], @@outcome[:win], @@outcome[:draw]]
    ]
  end

  private def wins?(choice1, choice2)
    @rules[CHOICES.find_index(choice1.choice)][CHOICES.find_index(choice2.choice)] == @@outcome[:win]
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

end
