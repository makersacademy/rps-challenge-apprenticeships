require "player"

describe Player do
  subject(:bruno) { Player.new("Bruno") }

  it "can return name" do
    expect(bruno.name).to eq "Bruno"
  end
end
