describe Game do
  let(:player) { Player.new("Bob") }
  let(:game) { Game.new(player) }

  describe '#calculate_result' do

    it 'returns its a draw if both players selected rock' do
      player.instance_variable_set(:@choice, :rock)
      game.instance_variable_set(:@comp_choice, :rock)

      expect(game.calculate_result).to eq("It's a draw")
    end

    it 'returns computer wins if user selects rock and computer selects paper' do
      player.instance_variable_set(:@choice, :rock)
      game.instance_variable_set(:@comp_choice, :paper)

      expect(game.calculate_result).to eq("Computer wins")
    end

    it 'returns computer wins if user selects scissors and computer selects paper' do
      player.instance_variable_set(:@choice, :scissors)
      game.instance_variable_set(:@comp_choice, :paper)

      expect(game.calculate_result).to eq("Bob wins")
    end
  end
end
