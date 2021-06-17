# As a marketeer
# So that I can see my name in lights
# I would like to register my name before playing an online game

feature 'enter name' do
  scenario 'enter name in home page' do
    visit '/'
    fill_in :name, with: "Super Mario"
    click_button 'Start Game'
    expect(page).to have_content('Super Mario is playing Rock-Paper-Scissors')
  end
end