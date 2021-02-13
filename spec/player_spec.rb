require 'player'

describe Player do
    
  let(:player) { Player.new('Harry') }

  describe '#initalize' do
    it 'can return the players name' do
      expect(player.name).to eq('Harry')
    end
  end

end
