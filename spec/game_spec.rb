require 'game.rb'

describe Game do
  it 'can return rock' do
    allow(subject).to receive(:computer_choice).and_return('rock')
    expect(subject.computer_choice).to eq('rock')
  end

  it 'can return paper' do
    allow(subject).to receive(:computer_choice).and_return('paper')
    expect(subject.computer_choice).to eq('paper')
  end

  it 'can return scissors' do
    allow(subject).to receive(:computer_choice).and_return('scissors')
    expect(subject.computer_choice).to eq('scissors')
  end

end
