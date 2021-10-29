require './app'

# As a marketeer
# So that I can see my name in lights
# I would like to register my name before playing an online game

feature '#registration' do 
  scenario 'entering players name' do 
    visit '/'
    fill_in :player_name, with: "Shanice"
    click_button 'Submit'
    save_and_open_page
    expect(page).to have_content "Shanice"
  end 
end 