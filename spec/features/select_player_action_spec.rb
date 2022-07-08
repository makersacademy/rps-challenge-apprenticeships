feature 'select player action' do
  scenario 'display available actions to user' do
    enter_name
    expect(page).to have_content('Choose Rock, Paper or Scissors')
  end

  context 'when user selects Rock' do
    scenario 'display Rock as selected action' do
      enter_name
      click_button 'Rock'
      expect(page).to have_content('Rock')
    end
  end

  context 'when user selects Paper' do
    scenario 'display Paper as selected action' do
      enter_name
      click_button 'Paper'
      expect(page).to have_content('Paper')
    end
  end

  context 'when user selects Scissors' do
    scenario 'display Scissors as selected action' do
      enter_name
      click_button 'Scissors'
      expect(page).to have_content('Scissors')
    end
  end
end
