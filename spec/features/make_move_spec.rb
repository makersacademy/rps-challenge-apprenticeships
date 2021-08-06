feature 'Make move' do
  scenario 'make a move' do
    visit('/game')
    click_button 'Rock'
    expect(page).to have_content 'You chose Rock'
  end
end
