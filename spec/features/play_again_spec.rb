feature 'play again' do
  context 'after result has been declared' do
    scenario 'allow user to play again' do
      enter_name
      click_button 'Rock'
      click_button 'Play again'
      expect(page).to have_content("Choose Rock, Paper or Scissors")
    end
  end
end
