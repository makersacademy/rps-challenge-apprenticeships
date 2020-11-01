require 'player'

RSpec.describe 'Player' do
  subject(:melissa) { Player.new('Melissa') }

  describe '#name' do
    it 'returns name' do
      expect(melissa.name).to eq 'Melissa'
    end
  end

end
