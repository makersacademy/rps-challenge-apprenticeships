require './lib/results'

describe Results do
  let(:results) { described_class.new }

  it 'outputs the winnner of rock, paper and scissors' do
    expect(results.check('Scissor', 'Paper')).to eq 'Player 1'
  end
end
