require 'player'
describe Player do
  let(:player) { Player.new("Scott") }
  
  describe '#initialize' do
    it 'returns the name' do
      expect(player.name).to eq "Scott"
    end
  end



end