require 'decide'

describe Decide do
  it 'returns a random attack' do
    expect(subject.attack)
      .to eq("Rock")
      .or eq("Paper")
      .or eq("Scissors")
  end
end
