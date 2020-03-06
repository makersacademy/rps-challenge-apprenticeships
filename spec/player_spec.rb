require "player"
# require "game"

describe Player do
  subject(:jo) {Player.new("Jo") }

describe "#name" do
  it "returns the name" do
    expect(jo.player_name).to eq "Jo"
  end
end

end
