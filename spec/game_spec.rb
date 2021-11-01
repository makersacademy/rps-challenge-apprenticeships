require 'game'

describe Game do

  subject(:game) { described_class.new(player_1) }
  let(:player_1) { Player.new('Richard') }
  
  it 'retrieves player 1' do
    expect(subject.players).to eq(player_1)
  end

  describe 'player_1_move' do
    it "retrieves player's move" do
    end
  end
end