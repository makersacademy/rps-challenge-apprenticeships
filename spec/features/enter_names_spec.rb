feature 'Expect players to fill in their names in form' do
  scenario 'Submit form and display name on screen' do
    visit ('/names')
    name = 'name'
    fill_in 'human_player', with: name
    click_button 'Play!'
    expect(page).to have_content(name)
  end
end