require 'domain/game'

describe Game do
  let(:player_one) { double :player_one, name: "Jim"}
  let(:player_two) { double :player_two, name: "ai" }
  let(:subject) { described_class.new("ABCDEF", player_one, player_two, :single_player) }
  it 'has a game code' do
    expect(subject.game_code).to eq "ABCDEF"
  end

  it 'has two players linked to the game' do
    expect(subject.player_one).to eq player_one
    expect(subject.player_two).to eq player_two
  end

  it 'has a game type' do
    expect(subject.game_type).to eq :single_player
  end

  describe '#play_single_player_round' do
    it 'player one wins' do
      result = subject.play_single_player_round(player_one.name, GameStatusCodes::ROCK, GameStatusCodes::SCISSORS)
      expected = { player_one.name => 1, player_two.name => 0 }
      expect(result).to eq expected
      expect(subject.round_winner).to eq player_one
    end
    it 'player two wins' do
      result = subject.play_single_player_round(player_one.name, GameStatusCodes::ROCK, GameStatusCodes::PAPER)
      expected = { player_one.name => 0, player_two.name => 1 }
      expect(result).to eq expected
      expect(subject.round_winner).to eq player_two
    end
    it 'its a draw' do
      result = subject.play_single_player_round(player_one.name, GameStatusCodes::ROCK, GameStatusCodes::ROCK)
      expected = { player_one.name => 0, player_two.name => 0 }
      expect(result).to eq expected
      expect(subject.round_winner).to eq GameStatusCodes::DRAW
    end
  end

  describe '#==' do
    it 'returns false if the compared class does not match' do
      expect(subject == "Not a game").to eq false
    end
  end
end
