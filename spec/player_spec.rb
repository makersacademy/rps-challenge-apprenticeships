require 'player.rb'

describe Player do
  it "should create a new instance of game" do
    expect(subject).to be_instance_of Player
  end

  describe "#move" do
    it "should respond to winning" do
      expect(subject).to respond_to :move
    end
  end
end