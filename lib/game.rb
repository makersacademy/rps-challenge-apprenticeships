require_relative "./rock"
require_relative "./paper"
require_relative "./scissors"

class Game
  attr_reader :weapon, :opponent

  def initialize(player_selection)
    @player_selection = player_selection
    @weapon = select_weapon
    @opponent = random_weapon
  end

  def play
    @weapon.challenge(@opponent)
  end

  def result
    if @weapon.winner == true
      "You won!"
    elsif @weapon.loser == true
      "You lost!"
    elsif @weapon.draw == true
      "You drew!"
    end
  end

  private

  def select_weapon
    case @player_selection
    when "Rock"
      Rock.new
    when "Paper"
      Paper.new
    when "Scissors"
      Scissors.new
    end
  end

  def random_weapon
    ["Rock", "Paper", "Scissors"].sample
  end

end
