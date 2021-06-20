require_relative '../../lib/game'
require_relative '../../lib/computer'
require_relative '../../lib/player'

describe Game do
let(:player_1) { double(:player_1)}
let(:player_2) { double(:player_2)}
let(:computer) { class_double(Computer) }
subject(:object) { described_class.new(player_1) }

let(:Player) { class_double(Player) }
let(:player_object_1) { double(Player.new(player_1)) }
let(:player_object_2) { class_double(Player) }
let(:pvp_game) { Game.new(player_object_1, player_object_2) }

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
        expect(object.player_2.make_move).to eq "paper"
      end

  end

  context "when playing a multiplayer game" do

    it 'starts a two player game when passed two players' do
      expect(pvp_game.player_2).to_not eq(computer)
    end
  end

  context "when playing either 1 or 2 player game" do

    describe '#calculate_winner' do

      it "calculates rock beats scissors and announces winner" do
        allow(object.player_1).to receive_messages(:choice => "rock", :name => player_1, :win! => true)
        allow(object.player_2).to receive_messages(:choice =>"scissors", :name => player_2)
        expect(object.return_winner).to eq("#{player_1} wins!")
      end

      it "returns draw in a draw" do
        allow(object.player_1).to receive_messages(:choice => "paper", :name => player_1)
        allow(object.player_2).to receive_messages(:choice =>"paper", :name => player_2)
        expect(object.return_winner).to eq("It's a tie!")
      end

      it "returns a player 2 victory case correctly" do
        allow(object.player_1).to receive_messages(:choice => "paper", :name => player_1)
        allow(object.player_2).to receive_messages(:choice =>"scissors", :name => player_2)
        expect(object.return_winner).to eq("#{player_2} wins!")
      end
    end
  end
end
