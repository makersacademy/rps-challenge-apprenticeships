require 'services/rock_paper_scissors_decider'
require 'domain/game_status_codes'

describe RockPaperScissorsDecider do
  let(:subject) { described_class }
  describe '#calculate_winner' do 
    context 'Player and AI pick same option:' do
      it 'returns a draw for rock' do
        player_one_move = GameStatusCodes::ROCK
        player_two_move = GameStatusCodes::ROCK
        result = subject.calculate_winner(player_one_move, player_two_move)
        expect(result).to eq GameStatusCodes::DRAW
      end
      it 'returns a draw for paper' do
        player_one_move = GameStatusCodes::PAPER
        player_two_move = GameStatusCodes::PAPER
        result = subject.calculate_winner(player_one_move, player_two_move)
        expect(result).to eq GameStatusCodes::DRAW
      end
      it 'returns a draw for scissors' do
        player_one_move = GameStatusCodes::SCISSORS
        player_two_move = GameStatusCodes::SCISSORS
        result = subject.calculate_winner(player_one_move, player_two_move)
        expect(result).to eq GameStatusCodes::DRAW
      end
    end
  context 'player one picks rock' do
    it 'returns a loss when player two picks paper' do
      player_one_move = GameStatusCodes::ROCK
      player_two_move = GameStatusCodes::PAPER
      result = subject.calculate_winner(player_one_move, player_two_move)
      expect(result).to eq GameStatusCodes::PLAYER_TWO
    end
    it 'returns a win when player two picks scissors' do
      player_one_move = GameStatusCodes::ROCK
      player_two_move = GameStatusCodes::SCISSORS
      result = subject.calculate_winner(player_one_move, player_two_move)
      expect(result).to eq GameStatusCodes::PLAYER_ONE
    end
  end
  context 'player one picks paper' do
    it 'returns a loss when player two picks scissors' do
      player_one_move = GameStatusCodes::PAPER
      player_two_move = GameStatusCodes::SCISSORS
      result = subject.calculate_winner(player_one_move, player_two_move)
      expect(result).to eq GameStatusCodes::PLAYER_TWO
    end
    it 'returns a win when AI picks rock' do
      player_one_move = GameStatusCodes::PAPER
      player_two_move = GameStatusCodes::ROCK
      result = subject.calculate_winner(player_one_move, player_two_move)
      expect(result).to eq GameStatusCodes::PLAYER_ONE
    end
  end
  context 'player one picks scissors' do
    it 'returns a loss when player two picks rock' do
      player_one_move = GameStatusCodes::SCISSORS
      player_two_move = GameStatusCodes::ROCK
      result = subject.calculate_winner(player_one_move, player_two_move)
      expect(result).to eq GameService::PLAYER_TWO
    end
    it 'returns a win when player two picks paper' do
      player_one_move = GameStatusCodes::SCISSORS
      player_two_move = GameStatusCodes::PAPER
      result = subject.calculate_winner(player_one_move, player_two_move)
      expect(result).to eq GameService::PLAYER_ONE
    end
  end
  end
end
