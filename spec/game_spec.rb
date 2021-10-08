require 'game'

describe Game do
  describe '#winner' do
    it 'should return a draw' do
      expect(subject.winner(:rock, :rock)).to eq('Draw!')
    end
    describe "player wins" do
      it 'rock v scissors' do
        expect(subject.winner(:rock, :scissors)).to eq('Player wins!')
      end
  
      it 'paper v rock' do
        expect(subject.winner(:paper, :rock)).to eq('Player wins!')
      end
    end

    describe "computer wins" do
      it 'rock vs paper' do
        expect(subject.winner(:rock, :paper)).to eq('Computer wins!')
      end
  
      it 'paper vs scissors' do
        expect(subject.winner(:paper, :scissors)).to eq('Computer wins!')
      end
    end
  end
end 
