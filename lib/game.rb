require_relative 'player'

class Game

  def result(player1, player2)
    if player1.choice == player2.choice
      "Draw"
    elsif player1.choice == "Rock"
      case player2.choice
      when "Scissors"
        "#{player1.name} wins"
      when "Paper"
        "#{player1.name} wins"
      end
    elsif player1.choice == "Scissors"
      case player2.choice
      when "Paper"
        "#{player1.name} wins"
      when "Rock"
        "#{player2.name} wins"
      end
    else
      case player2.choice
      when "Scissors"
        "#{player2.name} wins"
      when "Rock"
        "#{player1.name} wins"
      end
    end
  end

end
