class Game

  def initialize(player1, player2)
    @player1 = player1
    @player2 = player2
  end

  def winner
    if @player1.weapon == beats(@player2.weapon)
      @player1.name
    elsif @player2.weapon == beats(@player1.weapon)
      @player2.name
    else
    end
  end

  def loser 
    if @player1.weapon == beats(@player2.weapon)
      @player2.name
    elsif @player2.weapon == beats(@player1.weapon)
      @player1.name
    else
    end
  end

  def beats(weapon)
    what_beats = { Rock: :Paper, Scissors: :Rock, Paper: :Scissors }
    what_beats[weapon]
  end

end
