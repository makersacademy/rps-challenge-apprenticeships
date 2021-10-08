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

  describe '#find_game' do
    it 'can find a game by the ID' do
      subject.start_single_player_game(player, "123456")
      subject.start_single_player_game(player, "789101")
      expect(subject.find_game("123456").game_code).to eq "123456"
    end

    it 'throws an error if the game does not exist' do
      expect { subject.find_game("123456") }.to raise_error "No game found"
    end
  end
end