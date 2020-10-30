
class Game


  attr_reader :turn_controller, :end

  attr_accessor :players

  def initialize(p1 = nil, p2 = nil)
    @players = [p1, p2]
    @end = false

    @beats = {
      :Rock => [:Scissors, :Lizard],
      :Scissors => [:Paper, :Lizard],
      :Paper => [:Rock, :Spock],
      :Lizard => [:Paper, :Spock],
      :Spock => [:Scissors, :Rock],
    }
  end

  # Attack the player given
  def attack(player)
    player.receive_damage(player.calculate_damage)
  end

  def player_1
    @players.first
  end

  def player_2
    @players.last
  end

  def winner
    p1 = player_1.selection.to_sym
    p2 = player_2.selection.to_sym

    # Draw
    if p1 == p2
      return "Draw"

    elsif @beats[p1].include? p2
      return player_1

    else
      return player_2
    end
  end

  def loser
    win = winner
    return (win == player_1 ? player_2 : player_1)
    #If we are here, it's a draw
    return "Draw"
  end

end
