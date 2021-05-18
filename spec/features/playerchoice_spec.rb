feature 'playerchoicepage' do
  before do
    sign_in
  end
  scenario 'it asks the player to choose rock, paper, or scissors' do
    expect(page).to have_content 'Choose your play:'
  end

  scenario 'it presents the player with the choices, rock, paper, and scissors' do
    expect(page).to have_button 'Rock'
    expect(page).to have_button 'Paper'
    expect(page).to have_button 'Scissors'
  end

  feature 'clicking a button takes the player to the appropriate endgame page' do
    scenario 'clicking rock takes you to the rock endgame' do
      click_button 'Rock'
      expect(page).to have_content "Reginald, you have chosen... Rock."
    end
    scenario 'clicking paper takes you to the paper endgame' do
      click_button 'Paper'
      expect(page).to have_content "Reginald, you have chosen... Paper."
    end
    scenario 'clicking scissors takes you to the scissors endgame' do
      click_button 'Scissors'
      expect(page).to have_content "Reginald, you have chosen... Scissors."
    end
  end
end
