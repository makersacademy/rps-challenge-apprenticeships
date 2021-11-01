feature '>>>Check button functionality' do
    scenario 'when you click Starg Game button' do
        sign_in
      visit('/play')
      click_button 'Start Game'
      expect(page).to have_content 'Please make a choice:'
    end

    scenario 'after you clicked Srat Game button' do
        sign_in
      visit('/play')
      click_button 'Start Game'
      expect(page).to have_button 'Rock'
      expect(page).to have_button 'Paper'
      expect(page).to have_button 'Scissors'
    end
  end
