class Computer
  def move
    random_number = rand(1..3)
    @move = 'ROCK' if random_number <= 1
    @move = 'PAPER' if random_number == 2
    @move = 'SCISSORS' if random_number == 3
    @move
  end
end
