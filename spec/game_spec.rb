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

  describe '#result' do
    it { is_expected.to respond_to(:result) }

    it 'expects winner to be player_1' do
      allow(player_1).to receive(:pick).and_return('rock')
      allow(player_2).to receive(:pick).and_return('scissors')
      expect(subject.result).to eq "Human is the winner!"
    end
  end
end
