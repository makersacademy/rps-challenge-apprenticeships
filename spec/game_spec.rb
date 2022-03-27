require 'game'

describe Game do
  subject(:game) { described_class.new(bob, cpu_1) }
    let(:bob) { double :player, name: 'Bob', weapon: 'rock' }
    let(:cpu_1) { double :cpu_player, name: 'cpu', weapon: 'scissors' }

  subject(:game_2) { described_class.new(bill, cpu_2) }
    let(:bill) { double :player, name: 'Bill', weapon: 'scissors' }
    let(:cpu_2) { double :cpu_player, name: 'cpu2', weapon: 'scissors' }

  describe '#player_1' do
    it 'returns player 1' do
      expect(game.player_1).to eq bob
    end
  end

  describe '#player_2' do
    it 'returns player_2' do
      expect(game.player_2).to eq cpu_1
    end
  end

  describe '#tie?' do
    context 'there is a winner' do
      it 'returns false' do
        expect(game.tie?).to eq false
      end
    end

    context 'there is no winner' do
      it 'returns true' do
        expect(game_2.tie?).to eq true
      end
    end
  end

  describe '#winner' do
    it 'returns the winner' do
      expect(game.winner).to eq bob
    end
  end
end