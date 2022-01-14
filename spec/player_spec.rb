require 'player'

describe Player do
  subject { described_class.new("test_player_one") }

  it { is_expected.to respond_to (:name) }
  
end
