require './gamechoice'

SEED = 7654
feature 'Register names' do
  scenario 'name registered before playing' do
    visit('/')
    fill_in :player_1_name, with: 'Jake'
    click_button 'Register'
    expect(page).to have_content 'Jake the marketeer'
  end
end

feature 'Playing a game of RPS' do
  scenario 'Move choices are displayed as buttons' do
  visit('/play')
  expect(page).to have_button 'Rock'
  expect(page).to have_button 'Paper'
  expect(page).to have_button 'Scissors'
  end
end

feature 'Player choosing their move' do
  scenario 'chooses Rock' do
  visit('/play')
  click_button 'Rock'
  expect(page).to have_content 'You have chosen Rock'
  end
end

feature 'Game choosing a move' do
  scenario 'chooses Scissors' do
    visit('/play')
    click_button 'Scissors'
    option = find(:css, "#move_message").text.strip
    expect(move_options).to include option
  end
end

feature 'Game randomises move' do
  scenario 'chooses random option' do
    visit ('/play')
    srand(SEED)
    click_button 'Rock'
    expect(page).to have_content 'You have chosen Rock'
  end
end

def move_options
  [:Rock, :Paper, :Scissors].map { |option| "You have chosen Scissors! The game chose #{option}"}
end
