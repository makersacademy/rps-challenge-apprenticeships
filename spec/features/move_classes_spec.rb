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
end