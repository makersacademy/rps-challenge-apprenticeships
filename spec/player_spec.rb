require 'player'

describe Player do
  let(:muffin) { Player.new('Muffin') }

  describe '#name' do
    it 'returns the name' do
      expect(muffin.name).to eq 'Muffin'
    end
  end
end