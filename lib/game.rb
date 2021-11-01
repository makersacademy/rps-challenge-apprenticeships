class Game

  def initialize(player1, player2)
    @player1 = player1
    @player2 = player2
  end

  def outcome
    if @player1.weapon == @player2.weapon
      { winner: :Nobody, loser: :Nobody }
    else 
      winner_and_loser
    end
  end

  def winner_and_loser
    if @player1.weapon == beats(@player2.weapon)
      { winner: @player1.name, loser: @player2.name }
    else 
      { winner: @player2.name, loser: @player1.name }
    end
  end

  def beats(weapon)
    what_beats = { Rock: :Paper, 
      Scissors: :Rock, 
      Paper: :Scissors }
    what_beats[weapon]
  end

end
