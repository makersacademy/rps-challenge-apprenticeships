feature 'has players name' do
  scenario 'visit root and enter player name' do
    sign_in_and_play
    expect(page).to have_content 'Muffin'
  end
end
