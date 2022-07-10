require 'player' 

describe Player do
  subject(:marlon) { Player.new('Marlon') }

  describe '#name' do
    it 'returns the players name' do
      expect(marlon.name).to eq 'Marlon'
    end
  end
end