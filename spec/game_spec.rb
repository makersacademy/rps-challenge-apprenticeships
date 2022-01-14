require 'game'

describe Game do
  let (:player_one) { double :player, name: "player_one" }
  subject { described_class.new(player_one) }

  it { is_expected.to respond_to (:player_one) }

end
