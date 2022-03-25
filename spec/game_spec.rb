require 'game'

describe Game do
  let(:player_one) { double :player, choice: "rock", name: "Homer" }
  # let(:player_two) { double :player, choice: "scissors", name: "Marge" }
  
  describe '#make_ai_choice returns a random choice' do
    it 'returns a random choice' do
      expect(["rock", "paper", "scissors"]).to include(Game.new(player_one).ai_choice)
    end
  end
  
  describe 'player chooses rock, ai chooses scissors, ' do
    it 'player wins' do
      srand(1)
      srand(3)
      expect(Game.run_vs_ai(player_one)).to eq "#{player_one.name} wins!"
    end
  end
  
  describe 'player chooses scissors, ai chooses scissors, ' do
    let(:player_one) { double :player, choice: "scissors" }
    it "it's a draw" do
      srand(1)
      srand(3)
      expect(Game.run_vs_ai(player_one)).to eq "It's a draw!"
    end
  end
  
  describe 'player chooses paper, ai chooses scissors, ' do
    let(:player_one) { double :player, choice: "paper" }
    it "it's a draw" do
      srand(1)
      srand(3)
      expect(Game.run_vs_ai(player_one)).to eq "You lose!"
    end
  end
end
