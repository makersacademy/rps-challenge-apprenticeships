require_relative '../../lib/game'

describe Game do
subject(:object) { described_class }
let(:player_1) { double(:player_1)}
let(:computer) { class_double(Computer) }

# let(:pve_game) { Game.new(player_1, computer) }

  it "starts a game" do
    expect(object).to respond_to(:new)
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

  end

end
