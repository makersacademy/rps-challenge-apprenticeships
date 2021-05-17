feature 'test page' do
  scenario 'visit test page' do
    visit '/test'
    expect(page).to have_content('Test page')
  end
end

# As a marketeer
# So that I can see my name in lights
# I would like to register my name before playing an online game

feature 'register name' do
  scenario 'register name and view on screen' do
    register_and_play
    expect(page).to have_content 'Jay'
  end
end

# As a marketeer
# So that I can enjoy myself away from the daily grind
# I would like to be able to play rock/paper/scissors

# As a marketeer
# So I can play a game
# I want to see the weapon choices: Rock, Paper, Scissors
feature 'playing a game' do
SCISSORS_SEED = 69

  before do
    register_and_play
  end

  scenario 'see options' do
    expect(page).to have_button 'Rock'
    expect(page).to have_button 'Paper'
    expect(page).to have_button 'Scissors'

  end

  # As a marketeer
  # So I can play a game
  # I want to be able to choose a weapon.
  scenario 'choose a weapon' do
    click_button 'Rock'
    expect(page).to have_content 'You chose Rock!'
  end

  # As a marketeer
  # So I can play a game
  # I want the computer player to choose a weapon
  scenario 'computer chooses rock' do
    click_button 'Rock'

    message = find(:css, "#opponent").text

    expect(message_options).to include message
  end

  # As a marketeer
  # So I can play a game
  # I want the computer's weapon to be randomly chosen
  scenario 'computer chooses random weapon' do
    srand(SCISSORS_SEED)
    click_button 'Rock'
    expect(page).to have_content 'Opponent chose Scissors!'
  end

  # As a marketeer
  # So I can play a game
  # I want to see a winner
  context 'end game'
  before do
    srand(SCISSORS_SEED)
    end

  scenario 'I win' do
    click_button 'Rock'
    expect(page).to have_content 'You win!'
  end

  scenario 'I lose' do
    click_button 'Paper'
    expect(page).to have_content 'You lose!'
  end

  scenario 'I draw' do
    click_button 'Scissors'
    expect(page).to have_content 'You draw!'
  end


  def message_options
    [:rock, :paper, :scissors].map { |weapon| "Opponent chose #{weapon.to_s.capitalize}!"}
  end
end
