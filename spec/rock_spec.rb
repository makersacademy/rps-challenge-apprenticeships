require 'rock'

describe Rock do
  describe "#init" do
    it "inits with value of 'rock'" do
      expect(subject.value).to eq 'rock'
    end
  end

  describe "#win_status" do
    it "beats scissors" do
      expect(subject.win_status('scissors')).to eq true
    end

    it "loses against paper" do
      expect(subject.win_status('paper')).to eq false
    end
  end
end