require_relative "player"

class GameController
  attr_reader :player1, :player2

  def initialize(name1, name2, player_class = Player)
    @player1 = player_class.new(name1)
    @player2 = player_class.new(name2)
    @win_conditions = generate_win_conditions
    @winning_score = 3
    @game_over = false
  end

  def play_round(selection1, selection2 = nil)
    @player1.selection = selection1
    @player2.selection = selection2 || computer_selection
    winner = check_winner
    response = process_results(winner)
    return response
  end

  def announce_winner
    winner = @player1.score > @player2.score ? @player1 : @player2
    return "#{winner.name} wins the match! Congratulations!"
  end

  def game_over?
    @game_over
  end

  def check_game_over
    @game_over = @player1.score == @winning_score || @player2.score == @winning_score
  end

  def reset
    player1.reset_score
    player2.reset_score
    @game_over = false
  end

  private
  def generate_win_conditions
    return [
      { selections: ["rock", "paper"], winner: "paper" },
      { selections: ["rock", "scissors"], winner: "rock" },
      { selections: ["rock", "lizard"], winner: "rock" },
      { selections: ["rock", "spock"], winner: "spock" },
      { selections: ["paper", "scissors"], winner: "scissors" },
      { selections: ["paper", "lizard"], winner: "lizard" },
      { selections: ["paper", "spock"], winner: "paper" },
      { selections: ["scissors", "lizard"], winner: "scissors" },
      { selections: ["scissors", "spock"], winner: "spock" },
      { selections: ["lizard", "spock"], winner: "lizard" },
    ]
  end
  
  def check_winner
    return "draw" if player1.selection == player2.selection

    winning_selection = ""
    # use our win conditions array to work out which choice won
    @win_conditions.each do |condition|
      if condition[:selections].include?(player1.selection) && condition[:selections].include?(player2.selection)
        winning_selection = condition[:winner]
        break
      end
    end
    # use a ternary to work out which of our players made the winning choice, and return their player object
    return player1.selection == winning_selection ? player1 : player2
  end
  
  def computer_selection
    options = ["paper", "rock", "scissors", "lizard", "spock"]
    options.sample
  end

  def process_results(winner)
    if winner == "draw"
      response = "It's a draw! Try again."
    else
      winner.increment_score
      check_game_over
      response = "#{@player1.name} chose #{@player1.selection}, #{@player2.name} chose #{@player2.selection}. #{winner.name} wins!"
    end
    return response
  end
end
