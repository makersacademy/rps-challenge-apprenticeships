require './lib/player'

describe Player do
  let(:player_name) { double :player }
  describe '#initialize' do
    it 'initialises with a player name' do
      new_player = described_class.new(player_name)
      expect(new_player.name).to eq player_name
    end
  end
end
