require 'player'

describe Player do

  subject(:phoebe) { Player.new('Phoebe') }
  subject(:ross) { Player.new('Ross') }

  describe '#name' do
    it 'returns the name of the player' do
      expect(ross.name).to eq 'Ross'
    end
  end
  
end