feature 'declare result' do
  context 'after player and computer actions have been selected' do
    scenario 'display result' do
      enter_name
      click_button 'Rock'
      expect(page).to have_content("You won!").or have_content("It's a draw").or have_content("You lost!")
    end
  end
end
