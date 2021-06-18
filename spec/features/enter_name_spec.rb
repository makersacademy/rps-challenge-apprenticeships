# As a marketeer
# So that I can see my name in lights
# I would like to register my name before playing an online game

feature 'user can register their name' do
  let(:name) { double("name") }
  scenario 'the user can submit and return their name' do
    load_single_player_game(name)
    expect(page).to have_content name
  end
end
