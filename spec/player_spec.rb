require 'player'

describe Player do
  subject(:ion) { Player.new('Ion') }

  it 'returns the name' do
    expect(ion.name).to eq 'Ion'
  end
end
