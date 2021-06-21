require "player"

describe Player do
  subject(:bruno) { Player.new("Bruno") }

  it "can return name" do
    expect(bruno.name).to eq "Bruno"
  end

  it "can select a move" do
    bruno.select("rock")
    expect(bruno.move).to eq "rock"
  end
end
