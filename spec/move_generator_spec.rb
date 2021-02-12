require  'move_generator'

describe MoveGenerator do
  it 'chooses a move for the computer' do
    expect(subject.move).to eq true
  end
end