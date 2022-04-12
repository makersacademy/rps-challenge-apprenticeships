require_relative '../lib/game.rb'

RSpec.describe Game do
  it 'returns "Draw" if both answers are the same' do
    new_game = Game.new("Rock")
    expect(new_game).to receive(:opponent_answer).and_return("Rock")
    expect(new_game.result).to eq "Draw"
  end

  it 'returns "Lose" if the player has lost' do
    new_game = Game.new("Rock")
    expect(new_game).to receive(:opponent_answer).and_return("Paper")
    expect(new_game.result).to eq "Lose"
  end

  it 'returns "Win" if the player has won' do
    new_game = Game.new("Rock")
    expect(new_game).to receive(:opponent_answer).and_return("Scissors")
    expect(new_game.result).to eq "Win"
  end
end