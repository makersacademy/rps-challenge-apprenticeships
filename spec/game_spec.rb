require './lib/game'

describe '#play_game' do
  it 'takes an input and outputs a string' do
    game = Game.new("rock")
    expect(game.play_game).to eq("You Won")
  end
end
