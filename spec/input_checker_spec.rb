describe InputChecker do

  described_class.new

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
      expect(InputChecker.set_input("Input"))
      expect(InputChecker.input).to eq("Input")
    end
  end
end