require 'game'

describe Game do

  subject(:game) {described_class.new}

  describe '#initialize' do
    it 'should initialize with an attribute of most recent message' do
      
    end
  end

  describe '#shoot' do
    it 'should return a win message when player wins' do
      allow(Game).to receive(:rand).and_return(0)
      expect(Game.shoot("Rock")).to eq("You chose Rock. The computer chose Scissors. You win!")
    end

    it 'should return a draw message when player draws' do
      allow(Game).to receive(:rand).and_return(1)
      expect(Game.shoot("Rock")).to eq("You chose Rock. The computer chose Rock. A draw!")
    end

    it 'should return a draw message when player loses' do
      allow(Game).to receive(:rand).and_return(2)
      expect(Game.shoot("Rock")).to eq("You chose Rock. The computer chose Paper. You lose!")
    end
  end
end