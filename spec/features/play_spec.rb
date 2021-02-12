feature 'register your name' do
  scenario 'submitting the name' do
    visit '/'
    fill_in :player_name, with: 'Jessica'
    click_button 'Submit'
    expect(page).to have_content "Welcome Jessica! Let us battle!\nPlease pick rock, paper or scissors."
  end
end


# As a marketeer
# So that I can see my name in lights
# I would like to register my name before playing an online game
