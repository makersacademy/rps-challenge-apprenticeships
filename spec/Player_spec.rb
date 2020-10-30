require 'Player'

RSpec.describe 'Player' do
  subject(:melissa) { Player.new('Melissa') }

  describe '#name' do
    it 'returns name' do
      expect(melissa.name).to eq 'Melissa'
    end
  end

  describe '#move_rock' do
    it 'returns string of move to user' do
      expect(melissa.move_rock).to eq 'You chose Rock'
    end
  end

end
