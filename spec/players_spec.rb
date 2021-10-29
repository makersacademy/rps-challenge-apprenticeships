require_relative '../model/players'

describe Players do 
  
  describe '#player1' do 
  
    it 'checks we can return player1' do 

      player = Players.new("Dave")
      expect(player.player1).to eq "Dave"

    end 
  
  end 

  describe '#player2' do 

    it 'checks we can return player2' do 

      player_entry = ["Dave","Mike"]
      players = Players.new(player_entry)
      expect(players.player2).to eq "Mike"
      
    end  

  end 

end 