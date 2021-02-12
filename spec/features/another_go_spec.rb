feature 'Try again' do
  scenario 'The player can have another go at the game' do
    visit('/')
    fill_in :name, with: 'John'
    click_button 'Start'
    click_button 'paper'
    click_button 'Go again'
    expect(page).to have_content 'Make your move!'
  end
end