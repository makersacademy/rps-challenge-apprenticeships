require 'game'

describe Game do
  describe '#winner' do
    it 'should return a draw -  Rock vs Rock' do
      expect(subject.winner(:rock, :rock)).to eq('It\'s a draw!')
    end

    it 'should return Player wins - Rock vs Scissors' do
      expect(subject.winner(:rock, :scissors)).to eq('You Win!')
    end

    it 'should return Player wins - Paper vs Rock' do
      expect(subject.winner(:paper, :rock)).to eq('You Win!')
    end

    it 'should return Computer wins - Rock vs Paper' do
      expect(subject.winner(:rock, :paper)).to eq('Computer Wins!')
    end

    it 'should return Computer wins - Paper vs Scissors' do
      expect(subject.winner(:paper, :scissors)).to eq('Computer Wins!')
    end
  end
end