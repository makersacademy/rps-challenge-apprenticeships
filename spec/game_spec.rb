require 'game'

describe Game do

  it 'contains all RPS possibilities' do
    game = Game.new
    expect(game.choice).to eq ["Rock", "Paper", "Scissors"] 
  end
end
