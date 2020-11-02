require './gamechoice'

describe GameChoice do
  subject(:gamechoice) { described_class.new }


  describe '#moves' do
    it 'returns a random move' do
      expect(GameChoice::OPTIONS).to include gamechoice.moves
    end
  end
end
