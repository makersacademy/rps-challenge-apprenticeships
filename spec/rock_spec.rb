require 'rock'

describe Rock do
  describe "#init" do
    it "inits with value of 'rock'" do
      expect(subject.value).to eq 'rock'
    end
  end

  describe "#win_status" do
    it "crushes scissors" do
      expect(subject.win_status('scissors')).to eq true
    end
    
    it "crushes lizard" do
      expect(subject.win_status('lizard')).to eq true
    end

    it "is covered paper" do
      expect(subject.win_status('paper')).to eq false
    end
    
    it "is vaporized by spock" do
      expect(subject.win_status('spock')).to eq false
    end
  end
end
