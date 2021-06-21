require 'player'

describe Player do
  subject(:kelvin) { Player.new('Kelvin') }

  describe '#name' do
    it 'returns player name' do
      expect(kelvin.name).to eq 'Kelvin'
    end
  end
end
