require_relative '../app'

describe Computer do
  let(:computer) { described_class.new }

  it 'computer selects rock, paper or scissor' do
    expect(computer.move).to eq('Rock').or eq('Paper').or eq('Scissor')
  end
end
