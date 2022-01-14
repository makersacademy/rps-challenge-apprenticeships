# As a marketeer
# So that I can see my name in lights
# I would like to register my name before playing an online game

feature "registering" do
  scenario "player can register their name"do
    register_name
    welcome_message = "Welcome #{@name}!"
    expect(page).to have_content(welcome_message)
  end
end

# As a marketeer
# So that I can enjoy myself away from the daily grind
# I would like to be able to play rock/paper/scissors

feature "play a game" do

  scenario "player can choose rock" do
    register_name
    expect(page).to have_selector(:button, 'Rock')
  end

  scenario "player can choose paper" do
    register_name
    expect(page).to have_selector(:button, 'Paper')
  end

  scenario "player can choose scissors" do
    register_name
    expect(page).to have_selector(:button, 'Scissors')
  end

  scenario "player selects a losing option" do
    game = double game
    allow(game).to receive(:choice) { 'Paper' }
    register_name
    click_button('rock')
    expect(page).to have_content("You LOSE!!!")
  end

  scenario "player selects a winning option" do
    game = double game
    allow(game).to receive(:choice) { 'Paper' }
    register_name
    click_button('scissors')
    expect(page).to have_content("You WIN!!!")
  end

  scenario "player selects a drawing option" do
    register_name
    click_button('paper')
    expect(page).to have_content("It's a DRAW!!!")
  end
end