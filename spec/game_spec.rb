require 'game'
require 'player'

describe Game do

  let(:player_1) { double :player }
  let(:player_2) { double :player }
  subject(:game) { described_class.new(player_1, player_2) }

  describe '#player_1' do
    it 'retrieves player one' do
      expect(game.player_1).to eq player_1
    end
  end

  describe '#player_2' do
    it 'retrieves player two' do
      expect(game.player_2).to eq player_2
    end
  end

  describe '#winner' do
    it 'returns draw' do
      player_1.stub(:selection) { "Rock" }
      player_2.stub(:selection) { "Rock" }
      expect(game.winner).to eq "Draw"
    end

    it 'returns p1' do
      player_1.stub(:selection) { "Rock" }
      player_2.stub(:selection) { "Scissors" }
      expect(game.winner).to eq player_1
    end

    it 'returns p2' do
      player_1.stub(:selection) { "Rock" }
      player_2.stub(:selection) { "Paper" }
      expect(game.winner).to eq player_2
    end
  end
end
