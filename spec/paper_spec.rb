describe Paper do
  describe "#init" do
    it "inits with value of 'paper'" do
      expect(subject.value).to eq 'paper'
    end
  end

  describe "#win_status" do
    it "beats rock" do
      expect(subject.win_status('rock')).to eq true
    end

    it "loses against scissors" do
      expect(subject.win_status('scissors')).to eq false
    end
  end
end