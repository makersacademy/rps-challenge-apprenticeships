require 'game'

describe Game do

  describe '#play' do
    it 'player(Rock) beats scissors' do
      game = Game.new("rock", "scissors")
      expect(game.play).to eq("You win! Rock beats Scissors!")
    end
    it 'player(Rock) loses to paper' do
      game = Game.new("rock", "paper")
      expect(game.play).to eq("You lose! Paper beats Rock!")
    end
    it 'player(Rock) draws to rock' do
      game = Game.new("rock", "rock")
      expect(game.play).to eq("Draw! Rock against Rock!")
    end
    it 'player(Paper) beats rock' do
      game = Game.new("paper", "rock")
      expect(game.play).to eq("You win! Paper beats Rock!")
    end
    it 'player(Paper) loses to scissors' do
      game = Game.new("paper", "scissors")
      expect(game.play).to eq("You lose! Scissors beats Paper!")
    end
    it 'player(Paper) draws to paper' do
      game = Game.new("paper", "paper")
      expect(game.play).to eq("Draw! Paper against Paper!")
    end
    it 'player(Scissors) beats paper' do
      game = Game.new("scissors", "paper")
      expect(game.play).to eq("You win! Scissors beats Paper!")
    end
    it 'player(Scissors) loses to rock' do
      game = Game.new("scissors", "rock")
      expect(game.play).to eq("You lose! Rock beats Scissors!")
    end
    it 'player(Scissors) draws to scissors' do
      game = Game.new("scissors", "scissors")
      expect(game.play).to eq("Draw! Scissors against Scissors!")
    end
  end

  describe '#multiplayer_play' do
    it 'player 1 rock beats player 2 scissors' do
      game = Game.new("rock", "scissors")
      expect(game.multiplayer_play("Harry", "Eloise")).to eq("Harry wins! Rock beats Scissors!")
    end
    it 'player 1 rock loses to player 2 paper' do
      game = Game.new("rock", "paper")
      expect(game.multiplayer_play('Harry', 'Eloise')).to eq("Eloise wins! Paper beats Rock!")
    end
    it 'player 1 rock draws to player 2 rock' do
      game = Game.new("rock", "rock")
      expect(game.multiplayer_play('Harry', 'Eloise')).to eq("Draw! Harry & Eloise both chose Rock!")
    end
    it 'player 1 paper beats player 2 rock' do
      game = Game.new("paper", "rock")
      expect(game.multiplayer_play('Harry', 'Eloise')).to eq("Harry wins! Paper beats Rock!")
    end
    it 'player 1 paper loses to player 2 scissors' do
      game = Game.new("paper", "scissors")
      expect(game.multiplayer_play('Harry', 'Eloise')).to eq("Eloise wins! Scissors beats Paper!")
    end
    it 'player 1 paper draws to player 2 paper' do
      game = Game.new("paper", "paper")
      expect(game.multiplayer_play('Harry', 'Eloise')).to eq("Draw! Harry & Eloise both chose Paper!")
    end
    it 'player 1 scissors beats player 2 paper' do
      game = Game.new("scissors", "paper")
      expect(game.multiplayer_play('Harry', 'Eloise')).to eq("Harry wins! Scissors beats Paper!")
    end
    it 'player 1 scissors loses to player 2 rock' do
      game = Game.new("scissors", "rock")
      expect(game.multiplayer_play('Harry', 'Eloise')).to eq("Eloise wins! Rock beats Scissors!")
    end
    it 'player 1 scissors draws to player 2 scissors' do
      game = Game.new("scissors", "scissors")
      expect(game.multiplayer_play('Harry', 'Eloise')).to eq("Draw! Harry & Eloise both chose Scissors!")
    end
  end

end
