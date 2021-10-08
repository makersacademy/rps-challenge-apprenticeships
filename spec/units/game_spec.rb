require "game"

describe Game do
  it "starts a new game" do
    expect(Game).to respond_to(:new)
  end
end