feature 'Weapon choice page' do
  scenario 'Allows players to choose their weapon' do
    visit ('/weapon-choice')
    expect(page).to have_content ('Choose your weapon')
  end
end
