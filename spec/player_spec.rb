require 'player'

describe Player do
  subject(:olivia){Player.new('Olivia')}

  describe '#name' do
    it 'returns the player name' do
      expect(olivia.name).to eq 'Olivia'
    end
  end

end