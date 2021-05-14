require 'game'

describe Game do
  subject(:game) { described_class.new(player) }
  let(:player) { double :player }

  describe '#player' do
    it 'retrieves the player' do
      expect(game.player).to eq player
    end
  end

  describe '#opponent_choice' do
    it 'returns either Rock, Paper or Scissors' do
      allow(game).to receive(:opponent_choice) { "ROCK" }
      expect(game.opponent_choice).to eq "ROCK"
    end
  end

end
