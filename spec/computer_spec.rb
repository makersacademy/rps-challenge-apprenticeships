require 'computer'

describe Computer do 
  subject(:computer) { described_class.new }

  describe '#shape' do 
    it 'return a random choice' do
      expect(Computer::SHAPES).to include computer.shape
    end
  end
end
