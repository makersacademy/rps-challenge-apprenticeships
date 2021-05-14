require 'player'

describe Player do

  let(:subject) { described_class.new('Timothy', 'paper') }
  
  describe '#name' do
    it { is_expected.to respond_to :name }

    it 'can return a name' do
      expect(subject.name).to eq 'Timothy'
    end
  end

  describe '#choice' do
    it { is_expected.to respond_to :choice }

    it 'default value is nil' do
      subject = Player.new('Timothy')
      expect(subject.choice).to eq nil
    end

    it 'has a changeable choice' do
      subject = Player.new('Timothy')
      subject.choice = 'paper'
      expect(subject.choice).to eq 'paper'
    end

    it 'can return paper' do
      expect(subject.choice).to eq 'paper'
    end
  end
  
end
