require  'move_generator'

describe MoveGenerator do
  it 'chooses a move for the computer' do
    allow(subject).to receive(:move).and_return('rock')
    expect(subject.move).to eq 'rock'
  end
end