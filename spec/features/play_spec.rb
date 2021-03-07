feature 'Enter moves' do
    scenario 'submitting moves' do
      sign_in_and_play
      expect(page).to have_content "Dave's turn"
      expect(page).to have_content "Mittens's turn"
    end
end