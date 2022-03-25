require 'player'

describe Player do
  subject(:chalyssa) { Player.new('Chalyssa')}

  describe '#name' do
    it 'returns name' do
      expect(chalyssa.name).to eq 'Chalyssa'      
    end
  end

end