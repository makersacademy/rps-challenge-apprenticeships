
feature 'Computer shows hand' do
    scenario 'Computer randomely picks RPS choice' do
      visit("play")
      expect(page).to have_content ['Rock', 'Paper', 'Scissors']
  end
end