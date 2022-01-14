require 'player'

describe Player do
  let(:player) { described_class.new('Aadam') }

  describe '#name' do
    it 'knows it\'s own name' do
      expect(player.name).to eq 'Aadam'
    end
  end

  describe '#choice' do
    it 'is initially nil' do
      expect(player.choice).to eq nil
    end
  end

  describe '#make_choice' do
    it 'can make a choice' do
      player.make_choice('paper')
      expect(player.choice).to eq 'paper'
    end
  end
end
