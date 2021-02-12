require 'spock'

describe Spock do
  describe "#init" do
    it "inits with value of 'spock'" do
      expect(subject.value).to eq 'spock'
    end
  end

  describe "#win_status" do
    it "smashes scissors" do
      expect(subject.win_status('scissors')).to eq true
    end
    
    it "vaporizes rock" do
      expect(subject.win_status('rock')).to eq true
    end

    it "is poisoned by lizard" do
      expect(subject.win_status('lizard')).to eq false
    end
    
    it "is disproven by paper" do
      expect(subject.win_status('paper')).to eq false
    end
  end
end
