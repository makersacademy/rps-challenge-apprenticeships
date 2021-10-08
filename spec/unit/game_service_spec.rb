require 'services/game_service'

describe GameService do
  let(:player) { double :player }
  let(:game_code) { "ABCDEF" }
  let(:game) { Game.new(game_code, player, GameService::COMPUTER_PLAYER, GameService::SINGLE_PLAYER) }
  let(:subject) { described_class.new }

  describe '#start_single_player_game' do
    it 'starts a new game with one human player' do
        subject.start_single_player_game(player, game_code)
      expect(subject.find_game(game_code)).to eq game
    end
  end
end