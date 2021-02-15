require 'weapon'

describe Weapon do
  describe "#init" do
    it "can be rock, paper, scissors, lizard or spock" do
      lizard = Weapon.new('lizard')
      expect(lizard.choice).to eq :lizard
    end
  end

  describe "#init with no args" do
    subject(:weapon) { described_class.new }
    it "inits with a random #choice if no argument is passed" do
      expect(Weapon::CHART).to include weapon.choice
    end
  end

  describe "#win_status" do
    it "returns false if player's 'defeats' array does not include opponent's choice" do
      player1 = Weapon.new('lizard')
      player2 = Weapon.new('scissors')
      expect(player1.win_status(player2.choice)).to eq false
    end
    
    it "same goes for matching choices, in which case it would result in 2 falses for a draw" do
      player1 = Weapon.new('paper')
      player2 = Weapon.new('paper')
      expect(player1.win_status(player2.choice)).to eq false
    end

    it "returns true if the player's 'defeats' array DOES include the opponent's choice" do
      player1 = Weapon.new('spock')
      player2 = Weapon.new('rock')
      expect(player1.win_status(player2.choice)).to eq true
    end
  end
end
