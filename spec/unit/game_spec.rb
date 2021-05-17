require 'game'

describe Game do
  context('SINGLE PLAYER') do
    subject(:game) { described_class.new(player1, player2, "Single player") }
    let(:player1) { double :player1, :name => "Emily", :playertype => "human" }
    let(:player2) { double :player2, :name => "computer", :playertype => "computer" }

    describe "Computer plays" do
      it 'returns a random rock, paper, or scissors' do
        expect(subject.random).to eq('rock').or(eq('paper')).or(eq('scissors'))
      end
    end
  end
  
  describe "who beats who" do
    subject(:game) { described_class.new(player1, player2, "Multiplayer") }
    let(:player1) { double :player1, :name => "Emily", :playertype => "human" }
    let(:player2) { double :player2, :name => "Monty", :playertype => "human" }

    it 'returns winner when passed rock and scissors' do
      expect(subject.win_logic("rock", "scissors")).to eq player1
    end
    it 'returns loser when passed rock and paper' do
      expect(subject.win_logic("rock", "paper")).to eq player2
    end
    it 'returns loser when passed paper and scissors' do
      expect(subject.win_logic("paper", "scissors")).to eq player2
    end
    it 'returns draw when passed paper and scissors' do
      expect(subject.win_logic("paper", "paper")).to eq "draw"
    end
  end
end
