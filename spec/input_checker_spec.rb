require 'input_checker'

describe InputChecker do

  before(:each) do
    InputChecker.new
  end

  describe '#initialize' do
    it "should initialize a class with an input attribute of 'foo'" do
      expect(InputChecker.input).to eq("foo")
    end
  end

  describe '#input' do
    it 'should return the name given to the class (class method)' do
      expect(InputChecker.input).to eq("foo")
    end
  end

  describe '#set_input' do
    it 'should set the class attribute to parameter' do
      InputChecker.set_input("Input")
      expect(InputChecker.input).to eq("Input")
    end
  end
end