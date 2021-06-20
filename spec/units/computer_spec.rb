require_relative '../../lib/computer'

describe Computer do
  it 'has a name' do
    expect(subject.name).to_not be_empty
  end

  it 'can make a move' do
    srand(4)
    expect(subject.make_move).to eq("paper")
  end

end
