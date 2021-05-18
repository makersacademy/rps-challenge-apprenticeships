feature 'endgame page' do
  before do
    sign_in
  end

  feature 'it tells you the computer choice' do
    scenario 'computer chooses scissors' do
      allow_any_instance_of(Game).to receive(:computer_move).and_return('Scissors')
      click_button "Rock"
      expect(page).to have_content "The computer chose Scissors."
    end
  end

  feature 'it tells you the outcome of the game' do
    scenario 'player win' do
      allow_any_instance_of(Game).to receive(:computer_move).and_return('Scissors')
      click_button "Rock"
      expect(page).to have_content "You have bested fate. Leave with your life while the gods allow it."
    end

    scenario 'computer win' do
      allow_any_instance_of(Game).to receive(:computer_move).and_return('Paper')
      click_button "Rock"
      expect(page).to have_content "You chose poorly. You are sentenced to rot in the outlands."
    end

    scenario 'neither win' do
      allow_any_instance_of(Game).to receive(:computer_move).and_return('Paper')
      click_button "Paper"
      expect(page).to have_content "You draw! Do you dare tempt fate again?"
    end
  end
end
