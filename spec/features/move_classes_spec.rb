require_relative '/Users/emilyfitzsimmons/Documents/projects/servers_and_clients/rps-challenge-apprenticeships/rock.rb'
require '/Users/emilyfitzsimmons/Documents/projects/servers_and_clients/rps-challenge-apprenticeships/paper.rb'

feature 'Rock is less than' do
    
  scenario 'paper' do
  rock = Rock.new
  paper = Paper.new
  expect(rock < paper).to eq true
  end

  scenario 'scissors' do
  rock = Rock.new
  scissors = Scissors.new
  expect(rock < scissors).to eq false
  end
end

feature 'Rock is greater than' do
    
  scenario 'paper' do
  rock = Rock.new
  paper = Paper.new
  expect(rock > paper).to eq false
  end

  scenario 'scissors' do
  rock = Rock.new
  scissors = Scissors.new
  expect(rock > scissors).to eq true
  end

feature 'Paper is less than' do
    
    scenario 'scissors' do
    paper = Paper.new
    scissors = Scissors.new
    expect(paper < scissors).to eq true
    end

    scenario 'rock' do
    paper = Paper.new
    rock = Rock.new
    expect(paper < rock).to eq false
    end
  end

feature 'Paper is greater than' do
    
    scenario 'rock' do
    paper = Paper.new
    rock = Rock.new
    expect(paper > rock).to eq true
    end

    scenario 'scissors' do
    paper = Paper.new
    scissors = Scissors.new
    expect(paper > scissors).to eq false
    end
  end

feature 'Scissors is greater than' do
    
    scenario 'paper' do
    scissors = Scissors.new
    paper = Paper.new
    expect(scissors > paper).to eq true
    end
  
    scenario 'rock' do
    scissors = Scissors.new
    rock = Rock.new
    expect(scissors > rock).to eq false
    end
end

feature 'Scissors is less than' do
    
  scenario 'rock' do
  scissors = Scissors.new
  rock = Rock.new
  expect(scissors < rock).to eq true
  end

  scenario 'paper' do
  scissors = Scissors.new
  paper = Paper.new
  expect(scissors < paper).to eq false
  end
end
end
