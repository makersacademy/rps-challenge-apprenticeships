feature 'landing page for RPS' do
  scenario "user registers their name" do
    visit ('/')
    fill_in :PlayerName, with: 'Justine'
    click_button 'Start Game!'
  end
end


# As a marketeer
# So that I can see my name in lights
# I would like to register my name before playing an online game