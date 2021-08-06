
feature 'test page' do
  scenario 'visit test page' do
    visit '/test'
    expect(page).to have_content('test page')
  end

  scenario 'two players can add their names for a personalised game' do
    visit "/"
    fill_in('player_1', with: 'Player 1')
    click_on('Submit')
    expect(page).to have_content "Player 1 vs. CPU"
  end
end


