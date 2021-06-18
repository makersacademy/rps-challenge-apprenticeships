describe Game do
  describe '#final_message' do
    it 'delivers You WIN!' do
      player = "ROCK"
      computer = "SCISSORS"
      expect(subject.final_message(player, computer)).to eq "You WIN!"
    end

    it 'delivers You LOSE!' do
      player = "PAPER"
      computer = "SCISSORS"
      expect(subject.final_message(player, computer)).to eq "You LOSE!"
    end

    it 'delivers It\'s a DRAW!' do
      player = "PAPER"
      computer = "PAPER"
      expect(subject.final_message(player, computer)).to eq "It's a DRAW!"
    end
  end
end
