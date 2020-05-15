require 'game.rb'

describe Game do
  subject(:game) { described_class.new("player1", "computer") }
  it "should create a new instance of game" do
    expect(subject).to be_instance_of Game
  end

  describe "#winning" do
    it "should respond to winning" do
      expect(subject).to respond_to :winning
    end
  end
end