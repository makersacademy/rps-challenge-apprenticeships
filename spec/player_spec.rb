require 'player'

describe Player do
  subject { Player.new('Anna') }

  describe '#name' do
    it 'returns the name' do
      expect(subject.name).to eq 'Anna'
    end
  end
end
