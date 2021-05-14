require 'player'

describe Player do
  subject(:liam) { Player.new("Liam") }

  describe '#name' do
    it 'returns player name' do
      expect(liam.name).to eq("Liam")
    end
  end
end
