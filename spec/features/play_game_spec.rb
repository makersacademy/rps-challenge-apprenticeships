feature 'play game' do

  let(:computer_choice) { instance_double(ComputerChoice) }

  scenario 'player chooses rock computer chooses rock' do
    allow(ComputerChoice).to receive(:new) { computer_choice }
    allow(computer_choice).to receive(:make_decision) { 'rock' }
    visit('/')
    fill_in :name, with: 'Harry'
    click_button 'Submit'
    click_button 'Rock'
    expect(page).to have_content 'Draw! Rock against Rock!'
  end

  scenario 'player chooses rock computer chooses paper' do
    allow(ComputerChoice).to receive(:new) { computer_choice }
    allow(computer_choice).to receive(:make_decision) { 'paper' }
    visit('/')
    fill_in :name, with: 'Harry'
    click_button 'Submit'
    click_button 'Rock'
    expect(page).to have_content 'You lose! Paper beats Rock!'
  end

  scenario 'player chooses rock computer chooses scissors' do
    allow(ComputerChoice).to receive(:new) { computer_choice }
    allow(computer_choice).to receive(:make_decision) { 'scissors' }
    visit('/')
    fill_in :name, with: 'Harry'
    click_button 'Submit'
    click_button 'Rock'
    expect(page).to have_content 'You win! Rock beats Scissors!'
  end

  scenario 'player chooses paper computer chooses rock' do
    allow(ComputerChoice).to receive(:new) { computer_choice }
    allow(computer_choice).to receive(:make_decision) { 'rock' }
    visit('/')
    fill_in :name, with: 'Harry'
    click_button 'Submit'
    click_button 'Paper'
    expect(page).to have_content 'You win! Paper beats Rock!'
  end

  scenario 'player chooses paper computer chooses paper' do
    allow(ComputerChoice).to receive(:new) { computer_choice }
    allow(computer_choice).to receive(:make_decision) { 'paper' }
    visit('/')
    fill_in :name, with: 'Harry'
    click_button 'Submit'
    click_button 'Paper'
    expect(page).to have_content 'Draw! Paper against Paper!'
  end

  scenario 'player chooses paper computer chooses scissors' do
    allow(ComputerChoice).to receive(:new) { computer_choice }
    allow(computer_choice).to receive(:make_decision) { 'scissors' }
    visit('/')
    fill_in :name, with: 'Harry'
    click_button 'Submit'
    click_button 'Paper'
    expect(page).to have_content 'You lose! Scissors beats Paper!'
  end

  scenario 'player chooses scissors computer chooses rock' do
    allow(ComputerChoice).to receive(:new) { computer_choice }
    allow(computer_choice).to receive(:make_decision) { 'rock' }
    visit('/')
    fill_in :name, with: 'Harry'
    click_button 'Submit'
    click_button 'Scissors'
    expect(page).to have_content 'You lose! Rock beats Scissors!'
  end

  scenario 'player chooses scissors computer chooses paper' do
    allow(ComputerChoice).to receive(:new) { computer_choice }
    allow(computer_choice).to receive(:make_decision) { 'paper' }
    visit('/')
    fill_in :name, with: 'Harry'
    click_button 'Submit'
    click_button 'Scissors'
    expect(page).to have_content 'You win! Scissors beats Paper!'
  end

  scenario 'player chooses scissors computer chooses scissors' do
    allow(ComputerChoice).to receive(:new) { computer_choice }
    allow(computer_choice).to receive(:make_decision) { 'scissors' }
    visit('/')
    fill_in :name, with: 'Harry'
    click_button 'Submit'
    click_button 'Scissors'
    expect(page).to have_content 'Draw! Scissors against Scissors!'
  end

end
