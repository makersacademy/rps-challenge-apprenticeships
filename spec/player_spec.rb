require 'player'

describe Player do
  let(:player1) { Player.new('Rob') }

  describe '#name' do
    it 'the player has a name' do
      expect(player1.name).to eq 'Rob'
    end
  end
end
