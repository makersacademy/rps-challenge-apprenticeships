require 'game'

describe Game do
 subject(:turn) { described_class.new }
  describe '#computer_weapon' do
    it 'returns a random weapon' do
      expect([:rock, :paper, :scissors]).to include turn.computer_weapon
    end
  end

end