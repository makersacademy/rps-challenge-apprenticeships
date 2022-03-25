require 'game'

describe Game do
  let(:player_one) { double :player, choose: "rock", name: "Homer" }
  let(:player_two) { double :player, choose: "scissors", name: "Marge" }
  subject(:game) { described_class.new(player_one, player_two) }

  describe '#initialize' do
    it 'creates a new game' do
      expect(game).to be_an_instance_of(Game)
    end
  end

  describe '#make_choices' do
    it 'returns an array of two choices' do
      expect(game.make_choices).to be_an_instance_of(Array)
      expect(game.make_choices.length).to eq(2)
    end
  end

  describe '#run' do
    it 'returns the winner of the game' do
      expect(game.run).to be_an_instance_of(String)
    end
  end

  describe 'player one wins when choosing rock' do
    let(:player_one) { double :player, choose: "rock", name: "Homer" }
    let(:player_two) { double :player, choose: "scissors", name: "Marge" }
    it 'returns player one wins' do
      expect(game.run).to eq("#{player_one.name} wins!")
    end
  end
end
