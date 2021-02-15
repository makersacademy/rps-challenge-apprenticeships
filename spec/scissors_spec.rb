require 'scissors.rb'

describe Scissors do
  describe "#init" do
    it "inits with value of 'scissors'" do
      expect(subject.value).to eq 'scissors'
    end
  end

  describe "#win_status" do
    it "cuts paper" do
      expect(subject.win_status('paper')).to eq true
    end
    
    it "decapitates lizard" do
      expect(subject.win_status('lizard')).to eq true
    end

    it "is crushed by rock" do
      expect(subject.win_status('rock')).to eq false
    end
    
    it "is smashed by spock" do
      expect(subject.win_status('spock')).to eq false
    end
  end
end
