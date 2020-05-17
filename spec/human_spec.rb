require './lib/human.rb'

describe Human do
  it 'initializes a new player with their move' do
    human = Human.new('Rock')
    expect(human.move).to eq 'Rock'
  end
end
