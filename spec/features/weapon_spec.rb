feature 'The player can select a weapon and is his selection' do
  scenario 'the player is presented with weapons choice' do
      visit('/')
      fill_in :name, with: 'Tia'
      click_button 'Start'
      click_button 'Paper'                
      expect(page).to have_text 'Paper vs '
  end                                             
end                                                                                                                                                                                                                    