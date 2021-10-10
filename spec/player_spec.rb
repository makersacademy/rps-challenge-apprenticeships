require 'player'

describe Player do

  Player.new("Troy")

  describe '#initialize' do
    it 'should initialize a class with a name attribute' do
      expect(Player.name).to eq("Troy")
    end
  end

  describe '#get_name' do
    it 'should return the name given to the class (class method)' do
      expect(Player.name).to eq("Troy")
    end
  end
end