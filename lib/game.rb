class Game
  def random_weapon
    index = Random.rand(0..2)
    ["rock", "paper", "scissors"][index]
  end
end
