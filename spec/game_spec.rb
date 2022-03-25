require 'game'

describe Game do
  subject(:game) { described_class.new(bob, cpu) }
    let(:bob) { double :player, name: 'Bob', weapon: 'rock' }
    let(:cpu) { double :player, name: 'cpu', weapon: 'scissors' }

    subject(:game_2) { described_class.new(bill, cpu) }
    let(:bill) { double :player, name: 'Bill', weapon: 'scissors' }
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

  describe '#result' do
    it 'returns the winner' do
      expect(game.result).to eq bob
    end

    context 'there is no winner' do
      it 'returns tie' do
        expect(game_2.result).to eq 'tie'
      end
    end
  end
end