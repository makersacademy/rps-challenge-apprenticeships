require 'game'

describe Game do

  it 'produces outcome where it is a draw' do
    p1 = "Rock"
    cpu = "Rock"
    game = Game.new(p1, cpu)
    expect(game.result).to eq "It's a Draw!"
  end

  it 'produces outcome where player one wins' do
    p1 = "Rock"
    cpu = "Scissors"
    game = Game.new(p1, cpu)
    expect(game.result).to eq "Player 1 wins"
  end

  it 'produces outcome where cpu wins' do
    p1 = "Paper"
    cpu = "Scissors"
    game = Game.new(p1, cpu)
    expect(game.result).to eq "Player 2 wins"
  end
  
end