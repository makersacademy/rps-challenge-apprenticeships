require 'game'

RSpec.describe Game do
  let(:player1) {double("Dan")}
  let(:player2) {double("Eddie")}
  subject { Game.new(player1, player2) }
  describe 'Initialize' do
    it "Sets the players" do
      expect(subject.players).not_to eq nil
    end
  end
end