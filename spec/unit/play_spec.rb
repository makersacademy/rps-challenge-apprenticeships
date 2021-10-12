require 'play'

describe Play do

  describe '#computer' do
    it 'returns a random RPS move' do
      expect(subject.computer).to eq('Rock').or eq('Paper').or eq('Scissors')
    end
  end
  
  describe '#play' do
    it 'returns win when paper against rock' do
      allow(subject).to receive(:computer).and_return("Rock")
      expect(subject.play("Paper", "Rock")).to eq("Win")
    end
    it 'returns draw when paper against paper' do
      allow(subject).to receive(:computer).and_return("Paper")
      expect(subject.play("Paper", "Paper")).to eq("Draw")
    end
    it 'returns lose when rock against paper' do
      allow(subject).to receive(:computer).and_return("Paper")
      expect(subject.play("Rock", "Paper")).to eq("Lose")
    end
  end
end