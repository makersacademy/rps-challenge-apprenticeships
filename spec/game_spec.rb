require 'game'

RSpec.describe Game do
  describe '#initialize' do
    it 'can return the player\'s choice' do
      game = Game.new("scissors", "rock")
      expect(game.player_choice).to eq "Scissors"
    end

    it 'can return the computer\'s choice' do
      game = Game.new("scissors", "rock")
      expect(game.computer_choice).to eq "Rock"
    end
  end

  describe '#play_game' do
    it 'player rock beats scissors' do
      game = Game.new("rock", "scissors")
      expect(game.play).to eq "You win! Rock beats Scissors."
    end
    it 'player rock loses to paper' do
      game = Game.new("rock", "paper")
      expect(game.play).to eq "Computer wins! Paper beats Rock."
    end
    it 'player rock draws to rock' do
      game = Game.new("rock", "rock")
      expect(game.play).to eq "Draw! Rock draws with Rock."
    end

    it 'player paper beats rock' do
      game = Game.new("paper", "rock")
      expect(game.play).to eq "You win! Paper beats Rock."
    end
    it 'player paper loses to scissors' do
      game = Game.new("paper", "scissors")
      expect(game.play).to eq "Computer wins! Scissors beats Paper."
    end
    it 'player paper draws to paper' do
      game = Game.new("paper", "paper")
      expect(game.play).to eq "Draw! Paper draws with Paper."
    end

    it 'player scissors beats paper' do
      game = Game.new("scissors", "paper")
      expect(game.play).to eq "You win! Scissors beats Paper."
    end
    it 'player scissors loses to rock' do
      game = Game.new("scissors", "rock")
      expect(game.play).to eq "Computer wins! Rock beats Scissors."
    end
    it 'player scissors draws to scissors' do
      game = Game.new("scissors", "scissors")
      expect(game.play).to eq "Draw! Scissors draws with Scissors."
    end
  end
end