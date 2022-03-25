require 'player'

describe Player do
  subject(:luci) { Player.new('Luci')}

  describe '#name' do
    it 'returns the name of the player' do
      expect(luci.name).to eq 'Luci'
    end
  end

  
end