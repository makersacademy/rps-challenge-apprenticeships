feature 'player names' do
  scenario 'player can enter their name and see it in #lights' do
    sign_in_and_play
    within "#lights" do
      expect(page).to have_content 'Bob Bohadana'
    end
  end
end