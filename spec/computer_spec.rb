require 'computer'

describe Computer do
  subject(:computer) { Computer.new }

  describe '#option' do
    it 'returns a random option' do
      expect(Computer::OPTIONS).to include computer.option
    end
  end
end