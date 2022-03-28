feature 'A message announcing the result of the game' do
  scenario 'the player want to see the result of the game' do
      visit('/')
      fill_in :name, with: 'Tia'
      click_button 'Start'
      click_button 'Paper'
      expect(page).to have_text 'The result is: '
  end                                             
end