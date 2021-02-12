describe Paper do
  describe "#init" do
    it "inits with value of 'paper'" do
      expect(subject.value).to eq 'paper'
    end
  end

  describe "#win_status" do
    it "covers rock" do
      expect(subject.win_status('rock')).to eq true
    end
    
    it "disproves spock" do
      expect(subject.win_status('spock')).to eq true
    end

    it "is cut by scissors" do
      expect(subject.win_status('scissors')).to eq false
    end
    
    it "is eaten by lizard" do
      expect(subject.win_status('lizard')).to eq false
    end
  end
end