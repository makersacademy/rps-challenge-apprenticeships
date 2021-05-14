require 'player'

describe Player do
  subject(:player) { described_class.new(:name) }

  describe '#name' do
    it 'displays the players name' do
      expect(subject.name).to eq :name
    end
  end

end
