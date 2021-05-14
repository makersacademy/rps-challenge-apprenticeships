require 'game'

describe Game do
  describe 'play' do
    context 'player chooses rock CPU chooses paper' do
      it 'CPU is declared winner' do
        allow(subject).to receive(:computer) { 'paper' }
        subject.play('rock')
        expect(subject.result).to eq 'CPU wins'
      end
    end

    context 'player chooses scissors CPU chooses rock' do
      it 'CPU is declared winner' do
        allow(subject).to receive(:computer) { 'rock' }
        subject.play('scissors')
        expect(subject.result).to eq 'CPU wins'
      end
    end

    context 'player chooses paper CPU chooses scissors' do
      it 'CPU is declared winner' do
        allow(subject).to receive(:computer) { 'scissor' }
        subject.play('paper')
        expect(subject.result).to eq 'CPU wins'
      end
    end

    context 'player chooses rock cpu chooses scissors' do
      it 'Player is declared winner' do
        allow(subject).to receive(:computer) { 'scissor' }
        subject.play('rock')
        expect(subject.result).to eq $player_1.name
      end
    end

    context 'player chooses scissors cpu chooses paper' do
      it 'Player is declared winner' do
        allow(subject).to receive(:computer) { 'paper' }
        subject.play('scissors')
        expect(subject.result).to eq $player_1.name
      end
    end

    context 'player chooses paper cpu chooses rock' do
      it 'Player is declared winner' do
        allow(subject).to receive(:computer) { 'rock' }
        subject.play('paper')
        expect(subject.result).to eq $player_1.name
      end
    end

    context 'player chooses rock and cpu chooses rock' do
      it 'declared a draw' do
        allow(subject).to receive(:computer) { 'rock' }
        subject.play('rock')
        expect(subject.result).to eq 'its a draw'
      end
    end
  end
end
