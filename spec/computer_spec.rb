require 'computer'

describe 'Computer' do
  it 'returns Rock' do
    computer = Computer.new
    allow(computer).to receive(:weapon).and_return('Rock')
    expect(computer.weapon).to eq 'Rock'
  end

  it 'returns Scissor' do
    computer = Computer.new
    allow(computer).to receive(:weapon).and_return('Scissor')
    expect(computer.weapon).to eq 'Scissor'
  end

  it 'returns Paper' do
    computer = Computer.new
    allow(computer).to receive(:weapon).and_return('Paper')
    expect(computer.weapon).to eq 'Paper'
  end
end
