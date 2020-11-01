require 'computer'

describe Computer do
  subject(:computer) { described_class.new }

  describe '#move' do
    it 'gives a random move' do
      expect(Computer::SHAPES).to include computer.move
    end
  end
end
