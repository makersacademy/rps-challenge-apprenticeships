
class Game
  GAME_RULES ={
    Rock: {Rock: :Draw, Paper: :Win, Scissors: :Lost},
    Paper: {Rock: :Lost, Paper: :Draw, Scissors: :Win},
    Scissors: {Rock: :Lost, Paper: :Win, Scissors: :Draw}
    }

  def initialize (compMove, playerMove)
    @compMove = compMove.to_sym
    @playerMove = playerMove.to_sym
  end

  def winner
    GAME_RULES[@compMove][@playerMove]
  end
end