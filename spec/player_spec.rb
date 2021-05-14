require 'player'

describe Player do
  subject(:luke) { described_class.new('Luke') }

  describe '#name' do
    it 'return the name' do
      expect(luke.name).to eq 'Luke'
    end
  end
end
