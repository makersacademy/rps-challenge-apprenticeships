require 'game'

describe Game do
  # game = Game.new
  # game.play('rock')
  # expect(
    #srand 2 is cpu choosing paper
  describe 'play' do
    context 'player chooses rock CPU chooses paper' do
      it 'CPU is declared winner' do
        srand(2)
        expect(subject.play('rock')).to eq 'CPU wins'
      end
    end

    context 'player chooses rock cpu chooses scissors' do
      it 'Player is declared winner' do
        srand(1)
        expect(subject.play('rock')).to eq 'player_1_win'
      end
    end

    context 'player chooses rock and cpu chooses rock' do
      it 'declared a draw' do
        srand(3)
        expect(subject.play('rock')).to eq 'its a draw'
      end
    end
  end


end


# game = Game.new
# ----
# game.player_weapon = "rock"
# return winner
# game.determine_winner
# ----
# return winner
# game.play('rock')
