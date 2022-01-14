# As a marketeer
# So that I can see my name in lights
# I would like to register my name before playing an online game

feature "registering" do
  scenario "player can register their name"do
    name = "Johnny"
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