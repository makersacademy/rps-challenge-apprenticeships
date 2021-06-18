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

  describe '#computer_option' do
    it "generates random PAPER" do
      srand(10)
      expect(subject.computer_option).to eq "PAPER"
    end

    it "generates random ROCK" do
      srand(7)
      expect(subject.computer_option).to eq "ROCK"
    end

    it "generates random SCISSORS" do
      srand(4)
      expect(subject.computer_option).to eq "SCISSORS"
    end
  end
end
