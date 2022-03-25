require 'game'

describe Game do
  subject(:game) { described_class.new(bob, cpu) }
    let(:bob) { double :player, name: 'Bob', weapon: 'rock' }
    let(:cpu) { double :player, name: 'cpu', weapon: 'scissors' }

  describe '#player_1' do
    it 'returns player 1' do
      expect(game.player_1).to eq bob
    end
  end

  describe '#player_2' do
    it 'returns player_2' do
      expect(game.player_2).to eq cpu
    end
  end

  describe '#winner' do
    it 'returns the winner' do
      expect(game.winner).to eq bob
    end
  end
end