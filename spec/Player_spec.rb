require 'Player'

RSpec.describe 'Player' do
  subject(:melissa) { Player.new('Melissa') }

  describe 'player name' do
    it 'returns name' do
      expect(melissa.name).to eq 'Melissa'
    end
  end

end
