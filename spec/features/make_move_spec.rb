feature 'Make a move' do
  scenario 'Player`s choice appears on next screen' do
    visit('/')
    fill_in :name, with: 'George'
    click_button 'Start'
    click_button 'rock'
    expect(page).to have_content 'Your move: rock'
  end
end