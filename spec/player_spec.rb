require 'player'

describe Player do

  let(:subject) { described_class.new('Timothy','paper') }
  
  describe '#name' do
    it { is_expected.to respond_to :name }

    it 'can return a name' do
      expect(subject.name).to eq 'Timothy'
    end
  end

  describe '#choice' do
    it { is_expected.to respond_to :choice }

    it 'can return paper' do
      expect(subject.choice).to eq 'paper'
    end
  end
  
end
