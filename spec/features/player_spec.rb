require 'player'

describe Player do
  let(:john) { Player.new("John") }
  it "has a name" do
    expect(john.name).to eq "John"
  end
end