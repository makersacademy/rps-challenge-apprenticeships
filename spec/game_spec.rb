require 'game'

describe Game do
  subject(:game){ described_class.new(jim)}
  let(:jim){ double :player, name: :Jim}

  describe '#player_1' do
    it 'initializes with player name' do
      expect(game.player_1.name).to eq :Jim
    end
  end
end