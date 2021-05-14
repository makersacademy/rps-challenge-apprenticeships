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
  scenario 'player submits name and views on screen' do
    register_and_play
    expect(page).to have_content 'Jay'
  end
end
