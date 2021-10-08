# Tests only for extended game, since other methods are tested in other spec files

describe GameLogic do
  context "Rock, Paper, Scissor, Lizard, Spock" do
    it "scissor cuts paper" do
      expect(subject.player1_wins_extended_game?('Scissors', 'Paper')).to eq true
    end

    it "paper covers rock" do
      expect(subject.player1_wins_extended_game?('Paper', 'Rock')).to eq true
    end

    it "rock crushes lizard" do
      expect(subject.player1_wins_extended_game?('Rock', 'Lizard')).to eq true
    end

    it "spock smashes scissors" do
      expect(subject.player1_wins_extended_game?('Spock', 'Scissors')).to eq true
    end

    it "scissors decapitate lizard" do
      expect(subject.player1_wins_extended_game?('Scissors', 'Lizard')).to eq true
    end

    it "lizard eats paper" do
      expect(subject.player1_wins_extended_game?('Lizard', 'Paper')).to eq true
    end
    
    it "paper disproves spock" do
      expect(subject.player1_wins_extended_game?('Paper', 'Spock')).to eq true
    end

    it "spock vaporizes rock" do
      expect(subject.player1_wins_extended_game?('Spock', 'Rock')).to eq true
    end

    it "rock crushes rock" do
      expect(subject.player1_wins_extended_game?('Spock', 'Rock')).to eq true
    end
  end
end
