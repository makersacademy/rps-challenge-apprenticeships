require 'player'

describe Player do
  subject(:Computer) { Player.new('Computer') }

  describe '#name' do
    it 'returns the name' do
      expect(Computer.name).to eq 'Computer'
    end
  end
end
