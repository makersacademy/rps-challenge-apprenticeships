require 'game'

describe Game do

  describe '#initalize' do
    it 'can return a players choice' do
      game = Game.new("rock", "paper")
      expect(game.player_choice).to eq "Rock"
    end

    it 'can return a computer choice' do
      game = Game.new("rock", "paper")
      expect(game.computer_choice).to eq "Paper"
    end

  end

  describe '#play' do
    it 'Player(Rock) beats scissors' do
      game = Game.new("rock", "scissors")
      expect(game.play).to eq("You win! Rock beats Scissors!")
    end
    it 'Player(Rock) loses to paper' do
      game = Game.new("rock", "paper")
      expect(game.play).to eq("You lose! Paper beats Rock!")
    end
    it 'Player(Rock) draws to rock' do
      game = Game.new("rock", "rock")
      expect(game.play).to eq("Draw! Rock against Rock!")
    end
    it 'Player(Paper) beats rock' do
      game = Game.new("paper", "rock")
      expect(game.play).to eq("You win! Paper beats Rock!")
    end
    it 'Player(Paper) loses to scissors' do
      game = Game.new("paper", "scissors")
      expect(game.play).to eq("You lose! Scissors beats Paper!")
    end
    it 'Player(Paper) draws to paper' do
      game = Game.new("paper", "paper")
      expect(game.play).to eq("Draw! Paper against Paper!")
    end
    it 'Player(Scissors) beats paper' do
      game = Game.new("scissors", "paper")
      expect(game.play).to eq("You win! Scissors beats Paper!")
    end
    it 'Player(Scissors) loses to rock' do
      game = Game.new("scissors", "rock")
      expect(game.play).to eq("You lose! Rock beats Scissors!")
    end
    it 'Player(Scissors) draws to scissors' do
      game = Game.new("scissors", "scissors")
      expect(game.play).to eq("Draw! Scissors against Scissors!")
    end
  end

end
