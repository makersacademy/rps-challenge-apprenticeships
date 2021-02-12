describe Scissors do
  describe "#init" do
    it "inits with value of 'scissors'" do
      expect(subject.value).to eq 'scissors'
    end
  end

  describe "#win_status" do
    it "beats paper" do
      expect(subject.win_status('paper')).to eq true
    end

    it "loses against rock" do
      expect(subject.win_status('rock')).to eq false
    end
  end
end