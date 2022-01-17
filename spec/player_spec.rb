require 'player'

describe Player do
  subject { described_class.new("test_player_one", nil) }

  it { is_expected.to respond_to (:name) }
  
  describe "#select_move" do
    it { is_expected.to respond_to(:select_move).with(1).argument }

    it "updates the move variable" do
      expect { subject.select_move("Rock") }.to change { subject.move }.from(nil).to("Rock")
    end
  end

  describe "#reset_move" do
    it "sets the move variable to nil" do
      subject.select_move("Rock")
      expect { subject.reset_move }.to change { subject.move }.from("Rock").to(nil)
    end
  end

  describe "#computer_move" do
    it { is_expected.to respond_to(:computer_move) }
  end

  describe "#spock_move" do
    it { is_expected.to respond_to(:spock_move) }
  end
end
