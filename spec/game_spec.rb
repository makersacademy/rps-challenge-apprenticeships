require 'game'

describe Game do
  subject(:single_game) { described_class.create(player_1, player_2) }
  let(:player_1) { double :player, name: "Human" }
  let(:player_2) { double :player, name: "Computer" }

  describe 'creating a game object' do
    it 'creates a new object when provided 2 player objects' do
      expect(subject).to be_an_instance_of(Game)
    end

    it "allows us to access the player objects" do
      expect(subject.player1).to eq player_1
    end
  end

  describe '#computer_attack' do
    it 'expects computer_attack to return rock, paper or scissors' do
      expect(['rock', 'paper', 'scissors']).to include(subject.computer_attack)
    end
  end
end
