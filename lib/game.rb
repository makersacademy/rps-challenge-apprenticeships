# No rspec file yet!
# mapping out how a game outcome could work 

class Game
  GAME_RULES ={
    Rock: {Rock: :Draw, Paper: :Win, Scissors: :Lost},
    Paper: {Rock: :Lost, Paper: :Draw, Scissors: :Win},
    Scissors: {Rock: :Lost, Paper: :Win, Scissors: :Draw}
    }

  def initialize (compMove, playerMove)
    @compMove = compMove
    @playerMove = playerMove
  end

  def winner
    GAME_RULES[@compMove.to_sym][@playerMove.to_sym]
  end

end