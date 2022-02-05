require './lib/game'

describe '#play_game' do


  it 'takes an input and outputs a string' do
    game = Game.new("rock")
    expect(["You won", "The computer beat you", "It's a draw"]).to include(game.play_game)
  end
end
