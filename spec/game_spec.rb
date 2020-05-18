describe Game do
  describe '#initialize' do
    it 'is initialised with @name variable defined by argument' do
      game = Game.new("Rock")
      expect(game.player_move).to eq("Rock")
    end
    it 'is initialized with a randomly generated computer_move' do
      game = Game.new("Rock")
      expect(["Rock", "Paper", "Scissors"]).to include(game.computer_move)
    end
  end

  describe '#result' do
    it 'calling result method returns a string for a draw' do
      srand(67810)
      game = Game.new("Rock")
      expect(game.result).to eq("It's a draw! :/")
    end
    it 'calling result method returns a string for a loss' do
      srand(67809)
      game = Game.new("Rock")
      expect(game.result).to eq("You Lost! :(")
    end
    it 'calling result method returns a string for a loss' do
      srand(67808)
      game = Game.new("Rock")
      expect(game.result).to eq("You Won! :)")
    end
  end
end
