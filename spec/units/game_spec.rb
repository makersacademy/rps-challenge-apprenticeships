require_relative '../../lib/game'

describe Game do
subject(:object) { described_class.new(player_1) }
let(:player_1) { double(:player_1)}
let(:computer) { class_double(Computer) }
# let(:pve_game) { Game.new(player_1, computer) }

  it "starts a game" do
    expect(Game).to respond_to(:new)
  end

  context "when playing a single player game" do
      it 'takes a user' do
        game = Game.new(player_1)
        expect(game.player_1).to eq(player_1)
      end

      it 'adds a computer player' do
        pve_game = Game.new(player_1, computer)
        expect(pve_game.player_2).to eq(computer)
      end

      it 'allows the computer to make a choice' do
        srand(4)
        expect(object.player_2.make_move).to eq "Scissors"
      end



  end

  context "when playing either 1 or 2 player game" do

    describe '#set_player_1_choice' do
      it 'can set player 1 choice as rock' do
        object.set_player_1_choice("rock")
        expect(object.player_1_choice).to eq("rock")
      end
    end

    describe '#set_player_2_choice' do
      it 'can set player 2 choice as scissors' do
        object.set_player_2_choice("scissors")
        expect(object.player_2_choice).to eq("scissors")
      end
    end

    describe '#calculate_winner' do

      it "calculates rock beats scissors and announces winner" do
        game = Game.new(player_1)
        game.set_player_1_choice("rock")
        game.set_player_2_choice("scissors")
        expect(game.return_winner).to eq(player_1)
      end

    end
  end
end
