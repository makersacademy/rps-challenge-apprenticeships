require 'computer_choice'

describe ComputerChoice do
  subject(:computer_choice) { described_class.new }
  
  describe 'the computer can return \'Rock\'' do
    it 'returns Rock' do
      srand 0
      expect(subject.choice).to eq 'Rock'
    end
  end

  describe 'the computer can return \'Paper\'' do
    it 'returns Paper' do
      srand 1
      expect(subject.choice).to eq 'Paper'
    end
  end
  
  describe 'the computer can return \'Scissors\'' do
    it 'returns Scissors' do
      srand 3
      expect(subject.choice).to eq 'Scissors'
    end
  end
end
