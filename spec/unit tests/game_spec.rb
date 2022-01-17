require 'game'

describe Game do

  subject { described_class.new('Rock') }

  describe "#initialize" do
    it "initializes with player choice" do
    end
  end
  
  describe "#choice" do
    it "can choose randomly between rock, paper and scissors" do
      expect(['Rock', 'Paper', 'Scissors']).to include(subject.choice)
    end
  end
  
  describe "#run_game" do

    it "outputs 'win' if the player wins" do
      allow(subject).to receive(:choice).and_return('Scissors')
      expect(subject.run_game).to eq 'win'
    end

    it "outputs 'lose' if the player loses" do
      allow(subject).to receive(:choice) { 'Paper' }

      expect(subject.run_game).to eq 'lose'
    end

    it "outputs 'draw' if the player draws" do
      allow(subject).to receive(:choice).and_return('Rock')

      expect(subject.run_game).to eq 'draw'
    end
  end 

  describe "outcome scenarios" do

    context "player chooses rock" do

      subject { described_class.new('Rock') }

      context "game chooses paper" do
        it "returns lose" do
          allow(subject).to receive(:choice).and_return('Paper')
          expect(subject.run_game).to eq 'lose'
        end
      end
      
      context "game chooses rock" do
        it "returns draw" do
          allow(subject).to receive(:choice).and_return('Rock')
          expect(subject.run_game).to eq 'draw'
        end
      end

      context "game chooses scissors" do
        it "returns win" do
          allow(subject).to receive(:choice).and_return('Scissors')
          expect(subject.run_game).to eq 'win'
        end
      end
    end

    context "player chooses paper" do

      subject { described_class.new('Paper') }

      context "game chooses paper" do
        it "returns draw" do
          allow(subject).to receive(:choice).and_return('Paper')
          expect(subject.run_game).to eq 'draw'
        end
      end
      
      context "game chooses rock" do
        it "returns win" do
          allow(subject).to receive(:choice).and_return('Rock')
          expect(subject.run_game).to eq 'win'
        end
      end

      context "game chooses scissors" do
        it "returns lose" do
          allow(subject).to receive(:choice).and_return('Scissors')
          expect(subject.run_game).to eq 'lose'
        end
      end
    end

    context "player chooses scissors" do

      subject { described_class.new('Scissors') }

      context "game chooses paper" do
        it "returns win" do
          allow(subject).to receive(:choice).and_return('Paper')
          expect(subject.run_game).to eq 'win'
        end
      end
      
      context "game chooses rock" do
        it "returns lose" do
          allow(subject).to receive(:choice).and_return('Rock')
          expect(subject.run_game).to eq 'lose'
        end
      end

      context "game chooses scissors" do
        it "returns draw" do
          allow(subject).to receive(:choice).and_return('Scissors')
          expect(subject.run_game).to eq 'draw'
        end
      end
    end

  end

end
