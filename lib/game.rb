require_relative 'player'

class Game
  attr_reader :name
  attr_accessor :cpu_choice

  def initialize
    @name = "CPU"
    @cpu_choice = cpu_choice
  end

  def cpu_choice
    @cpu_choice = ['Rock', 'Paper', 'Scissors'].sample
  end

  def find_winner(player, cpu)
    player_choice = player.choice
    cpu_weapon = cpu.cpu_choice
    if player_choice == "Rock"
      if cpu_weapon == "Paper"
        winner = cpu
      elsif cpu_weapon == "Scissors"
        winner = player
      else
        winner = "Draw"
      end
    elsif player_choice == "Paper"
      if cpu_weapon == "Scissors"
        winner = cpu
      elsif cpu_weapon == "Rock"
        winner = player
      else
        winner == "Draw"
      end
    elsif player_choice == "Scissors"
      if cpu_weapon == "Rock"
        winner = cpu
      elsif cpu_weapon == "Paper"
        winner = player
      else
        winner = "Draw"
      end
    end
    return winner.name
  end
end
