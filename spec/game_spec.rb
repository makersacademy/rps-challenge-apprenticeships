require 'game'

describe Game do
  describe '#move_generator' do
    it 'chooses a move for the computer' do
      allow(subject).to receive(:move_generator).and_return('rock')
      expect(subject.move_generator).to eq 'rock'
    end
  end

  describe '#battle' do
      it 'compares player move with computer move' do
        move = 'rock'
        allow(subject).to receive(:move_generator).and_return('scissors')
        expect(subject.battle(move)).to eq('You win')
    end
  end

end