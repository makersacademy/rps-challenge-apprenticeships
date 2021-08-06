feature 'Start game' do
  scenario 'start the game' do
    visit('/play')
    click_button 'Start game!'
    expect(page).to have_content 'Choose your move:'
  end
end