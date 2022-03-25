require 'game'

describe Game do
  describe '#play' do
    it 'returns the name' do
      player = 'Scissor'
      computer = 'Paper'
      expect(subject.play(player, computer)).to eq 'You win!'
    end
  end
end
