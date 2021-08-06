require_relative '../../lib/player'

describe Player do
  subject(:object) { described_class.new(player_1) }
  let(:player_1) { double(:player_1)}
  let(:player_2) { double(:player_2)}

  it 'has a name' do
    expect(object.name).to eq(player_1)
  end

  describe '#set_move' do
    it 'sets chosen move to state' do
      object.set_move("rock")
      expect(object.choice).to eq("rock")
    end

    it 'receives a three letter reference and returns a valid move' do
      object.set_move("roc")
      expect(object.choice).to eq("rock")
    end

    it 'returns invalid move if invalid three letter reference is submitted' do
      object.set_move("tur")
      expect(object.choice).to eq("an invalid move")
    end

    it 'returns invalid move if a non-three letter reference is submitted' do
      object.set_move("turnip")
      expect(object.choice).to eq("an invalid move")
    end
  end

end
