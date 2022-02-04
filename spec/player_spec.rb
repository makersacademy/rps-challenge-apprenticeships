require 'player'

describe Player do
  subject(:player) { described_class.new("Keith") }

  it 'knows its name' do
    expect(subject.name).to eq("Keith")
  end
end
