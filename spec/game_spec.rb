require 'game'

describe Game do
  let(:player1) { double :player }
  let(:player2) { double :player }
  subject(:game) { described_class.new(player1, player2) }

  describe '#initialize' do
    it 'player 1' do
      expect(game.player1).to eq player1
    end
    it 'player 2' do
      expect(game.player2).to eq player2
    end
  end
end
