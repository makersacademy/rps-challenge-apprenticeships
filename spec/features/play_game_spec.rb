# As a marketeer
# So that I can see my name in lights
# I would like to register my name before playing an online game

feature "registering" do
  scenario "player can register their name"do
    name = "Chuck Norris"
    welcome_message = "Welcome #{name}!"
    visit('/')
    fill_in('name', with: name)
    click_button('submit')
    expect(page).to have_content(welcome_message)
  end
end

# As a marketeer
# So that I can enjoy myself away from the daily grind
# I would like to be able to play rock/paper/scissors

feature "play a game" do

  let(:game_choice) { 'Paper' }

  scenario "player can choose rock" do
    name = "Chuck Norris"
    visit('/')
    fill_in('name', with: name)
    click_button('submit')
    expect(page).to have_selector(:button, 'Rock')
  end

  scenario "player can choose paper" do
    name = "Chuck Norris"
    visit('/')
    fill_in('name', with: name)
    click_button('submit')
    expect(page).to have_selector(:button, 'Paper')
  end

  scenario "player can choose scissors" do
    name = "Chuck Norris"
    visit('/')
    fill_in('name', with: name)
    click_button('submit')
    expect(page).to have_selector(:button, 'Scissors')
  end

  scenario "player selects rock and is told if they have won/lost" do
    name = "Chuck Norris"
    visit('/')
    fill_in('name', with: name)
    click_button('submit')
    click_button('rock')
    expect(page).to have_content("You LOSE!!!")
  end
end