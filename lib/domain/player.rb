class Player

  attr_reader :name
  def initialize(name)
    @name = name
    @games_record = { :wins => 0, :losses => 0 }
  end

  def wins
    @games_record[:wins]
  end

  def losses
    @games_record[:losses]
  end

  def total_games_played
    wins + losses
  end

  def add_win
    @games_record[:wins] += 1
  end

  def add_loss
    @games_record[:losses] += 1
  end
end
