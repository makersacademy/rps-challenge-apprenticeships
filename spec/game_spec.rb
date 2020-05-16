require 'game'
result = Game.new.result(Game.new.randomize, Game.new.randomize)

  describe 'Should be able to win, draw or lose all games' do
    it 'checks for an else statement which should never be displayed' do
    result
      expect(result).to_not eq 'invalid input detected, please contact support'
    end
  end
