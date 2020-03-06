require './computer'

describe Computer do 
	player1 = 'Rita'
	player2 = 'Edward'
	
	it 'contains only the moves for RockPaperScissor game' do
		expect(Computer::MOVE).to include 'rock'
		expect(Computer::MOVE).to include 'paper'
		expect(Computer::MOVE).to include 'scissors'
		expect(Computer::MOVE.length).to eq 3
	end
	it 'returns a random move' do
		computer = Computer.new
		expect(Computer::MOVE).to include(computer.random_move)
	end
	it 'returns move in string format' do
		expect(Computer.new.random_move.class).to eq String 
	end
	it 'declare the winner in string format' do 
		computer = Computer.new
		expect(computer.the_winner_is(player1, 'rock', player2, 'scissors').class).to eq String
	end
	it 'rock beats scissors' do
		computer = Computer.new
		expect(computer.the_winner_is(player1, 'rock', player2, 'scissors')).to eq "Rita"
	end
	it 'scissors beats paper' do 
		computer = Computer.new
		expect(computer.the_winner_is(player1, 'paper', player2, 'scissors')).to eq "Edward"
	end
	it 'paper beats rock' do 
		computer = Computer.new
		expect(computer.the_winner_is(player1, 'paper', player2, 'rock')).to eq "Rita"
	end
	it 'returns draw when same moves' do
		computer = Computer.new
		expect(computer.the_winner_is(player1, 'paper', player2, 'paper')).to eq "No one, it's a draw"
	end	
	it 'takes four params to get winner' do
		computer = Computer.new
		expect { computer.the_winner_is(player1, player2) }. to raise_error
	end
end