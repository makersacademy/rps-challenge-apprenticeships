require 'choice'

describe Choice do 

  describe '#choice' do 
    it 'returns the choice a player chose as an argument' do 
      subject = Choice.new("rock")
      expect(subject.show).to eq "rock"
    end 
  end 

#   describe '#random' do 
#   it 'returns the random choice of a player and store it in choice' do 
#     test = Choice.new()
#     expect(test.choice).to eq "rock"
#   end 
# end 
  
end 
