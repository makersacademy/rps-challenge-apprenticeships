feature 'player names' do
  scenario 'player can enter their name and see it in #lights' do
    visit '/'
    fill_in 'name', with: 'Bob Bohadana'
    click_button 'Play!'
    within "#lights" do
      expect(page).to have_content 'Bob Bohadana'
    end
  end
end