require 'lizard'

describe Lizard do
  describe "#init" do
    it "inits with value of 'lizard'" do
      expect(subject.value).to eq 'lizard'
    end
  end

  describe "#win_status" do
    it "eats paper" do
      expect(subject.win_status('paper')).to eq true
    end
    
    it "poisons spock" do
      expect(subject.win_status('spock')).to eq true
    end

    it "is decapitated by scissors" do
      expect(subject.win_status('scissors')).to eq false
    end
    
    it "is crushed by rock" do
      expect(subject.win_status('rock')).to eq false
    end
  end
end