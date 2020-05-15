require 'computer.rb'

describe Computer do
  it "should create a new instance of game" do
    expect(subject).to be_instance_of Computer
  end

  describe "#move" do
    it "should respond to move" do
      expect(subject).to respond_to :move
    end

    it "should return a random move" do
      allow(subject).to receive(:move).and_return("rock")
      expect(subject.move).to eq("rock")
    end
  end
end